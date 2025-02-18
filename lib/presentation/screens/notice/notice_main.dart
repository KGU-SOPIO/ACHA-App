import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/extensions/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class NoticeMainScreen extends StatefulWidget {
  const NoticeMainScreen({super.key});

  @override
  State<NoticeMainScreen> createState() => _NoticeMainScreenState();

  static Route<void> route({required Course course, required int noticeId}) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => NoticeBloc(
          courseRepository: GetIt.I<CourseRepository>(),
          course: course,
          noticeId: noticeId,
        )..add(const NoticeEvent.fetchNotice()),
        child: const NoticeMainScreen(),
      ),
    );
  }
}

class _NoticeMainScreenState extends State<NoticeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _buildBackButton(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: _buildBody(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SvgPicture.asset('lib/assets/svgs/mypage/back_arrow.svg'),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocConsumer<NoticeBloc, NoticeState>(
      listener: (context, state) {
        if (state.status == NoticeStatus.error) {
          Navigator.pop(context);
          GetIt.I<ToastManager>().error(message: state.errorMessage!);
        }
      },
      builder: (context, state) {
        if (state.status == NoticeStatus.loading) {
          return const ContentSkeletonContainer();
        } else if (state.status == NoticeStatus.loaded) {
          final notice = state.notice!;
          return _buildLoadedContent(context, state, notice);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildLoadedContent(
      BuildContext context, NoticeState state, Notice notice) {
    final hasNext = notice.nextNoticeId != null;
    final hasPrevious = notice.previousNoticeId != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(context, state, notice),
        const SizedBox(height: 20),
        _buildNoticeContent(notice),
        const SizedBox(height: 30),
        _buildNavigationSection(context, notice, hasNext, hasPrevious),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, NoticeState state, Notice notice) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 228, 232, 241)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Text(
            context.read<NoticeBloc>().course.title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 30, 30, 30),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            notice.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 30, 30, 30),
            ),
          ),
          const SizedBox(height: 20),
          _buildNoticeInformation(context, notice),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildNoticeInformation(BuildContext context, Notice notice) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset('lib/assets/svgs/notice/person.svg'),
        const SizedBox(width: 7),
        Text(
          notice.professor,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 151, 151, 151),
          ),
        ),
        const SizedBox(width: 20),
        SvgPicture.asset('lib/assets/svgs/notice/clock.svg'),
        const SizedBox(width: 7),
        Text(
          notice.date.formatDate(pattern: 'y년 M월 D일'),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 151, 151, 151),
          ),
        ),
      ],
    );
  }

  Widget _buildNoticeContent(Notice notice) {
    return Text(
      notice.content!
          .replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
      style: const TextStyle(
        fontSize: 12,
        height: 1.7,
      ),
    );
  }

  Widget _buildNavigationSection(
      BuildContext context, Notice notice, bool hasNext, bool hasPrevious) {
    return Column(
      children: [
        if (hasNext) _buildNextButton(context, notice, hasPrevious),
        if (hasPrevious) _buildPreviousButton(context, notice, hasNext),
      ],
    );
  }

  Widget _buildNextButton(
      BuildContext context, Notice notice, bool hasPrevious) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        NoticeMainScreen.route(
          course: context.read<NoticeBloc>().course,
          noticeId: notice.nextNoticeId!,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        decoration: BoxDecoration(
          borderRadius: hasPrevious
              ? const BorderRadius.vertical(top: Radius.circular(20))
              : BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 237, 239, 242),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  '다음글',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 10),
                Text(
                  notice.nextNoticeTitle!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SvgPicture.asset('lib/assets/svgs/notice/right_arrow.svg')
          ],
        ),
      ),
    );
  }

  Widget _buildPreviousButton(
      BuildContext context, Notice notice, bool hasNext) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        NoticeMainScreen.route(
          course: context.read<NoticeBloc>().course,
          noticeId: notice.previousNoticeId!,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        decoration: BoxDecoration(
          borderRadius: hasNext
              ? const BorderRadius.vertical(bottom: Radius.circular(20))
              : BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 237, 239, 242),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  '이전글',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  notice.previousNoticeTitle!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SvgPicture.asset('lib/assets/svgs/notice/right_arrow.svg')
          ],
        ),
      ),
    );
  }
}
