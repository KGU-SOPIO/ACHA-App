import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/notice_list/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/screens/notice/notice_main.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();

  static Route<void> route({required Course course}) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => NoticeListBloc(
          courseRepository: GetIt.I<CourseRepository>(),
          course: course
        )..add(NoticeListEvent.fetchNoticeList()),
        child: const NoticeScreen()
      )
    );
  }
}

class _NoticeScreenState extends State<NoticeScreen> {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 35),
                    _buildCourseTitle(context),
                    const SizedBox(height: 10),
                    _buildNoticeHeader(),
                    const SizedBox(height: 10),
                    _buildNoticeListSection(context)
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
        child: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SvgPicture.asset('lib/assets/svgs/mypage/back_arrow.svg')
      )
    );
  }

  Widget _buildCourseTitle(BuildContext context) {
    return Text(
      context.read<NoticeListBloc>().course.name,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 30, 30, 30)
      )
    );
  }

  Widget _buildNoticeHeader() {
    return Row(
      children: [
        Text(
          '공지사항',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 30, 30, 30)
          ),
        ),
        const SizedBox(width: 10),
        SvgPicture.asset('lib/assets/svgs/notice/note.svg')
      ]
    );
  }

  Widget _buildNoticeListSection(BuildContext context) {
    return BlocConsumer<NoticeListBloc, NoticeListState>(
      listener: (context, state) {
        if (state.status == NoticeListStatus.error) {
          Navigator.pop(context);
          GetIt.I<ToastManager>().error(message: state.errorMessage!);
        }
      },
      builder: (context, state) {
        if (state.status == NoticeListStatus.loading) {
          return Column(children: List.generate(4, (index) => NoticeSkeletonContainer()));
        } else if (state.status == NoticeListStatus.loaded) {
          return _buildNoticeListContent(context, state.noticeList?.notices);
        } else {
          return const SizedBox.shrink();
        }
      }
    );
  }

  Widget _buildNoticeListContent(BuildContext context, List<Notice>? notices) {
    if (notices == null) {
      return const SizedBox(
        height: 550,
        child: Center(
          child: Text(
            '등록된 공지사항이 없어요',
            style: TextStyle(fontSize: 15)
          )
        )
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: notices.length,
      itemBuilder: (context, index) => _buildNoticeItem(context, notices[index])
    );
  }

  Widget _buildNoticeItem(BuildContext context, Notice notice) {
    return GestureDetector(
      onTap: () => Navigator.push(context, NoticeMainScreen.route(course: context.read<NoticeListBloc>().course, noticeId: notice.id)),
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 18, bottom: 15),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(255, 228, 232, 241)
            )
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  notice.index.toString(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 151, 151, 151)
                  )
                ),
                const SizedBox(width: 15),
                Text(
                  notice.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 60, 60, 60)
                  )
                )
              ]
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset('lib/assets/svgs/notice/person.svg'),
                const SizedBox(width: 7),
                Text(
                  context.read<NoticeListBloc>().course.professor,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 151, 151, 151)
                  )
                ),
                const SizedBox(width: 20),
                SvgPicture.asset('lib/assets/svgs/notice/clock.svg'),
                const SizedBox(width: 7),
                Text(
                  notice.date.formatDate(pattern: 'y년 M월 D일'),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 151, 151, 151)
                  )
                )
              ]
            )
          ]
        )
      )
    );
  }
}