import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/notice/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/widgets/containers/index.dart';

class NoticeMainScreen extends StatefulWidget {
  const NoticeMainScreen({super.key});

  @override
  State<NoticeMainScreen> createState() => _NoticeMainScreenState();

  static Route<void> route({required Course course, required int noticeId}) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider<NoticeBloc>(
        create: (context) => NoticeBloc(
          courseRepository: GetIt.I<CourseRepository>(),
          course: course,
          noticeId: noticeId
        )..add(NoticeEvent.fetch()),
        child: const NoticeMainScreen()
      )
    );
  }
}

class _NoticeMainScreenState extends State<NoticeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: BlocListener<NoticeBloc, NoticeState>(
            listener: (context, state) {
              
            },
            child: BlocBuilder<NoticeBloc, NoticeState>(
              builder: (context, state) {
                
                if (state.status == NoticeStatus.loading) {
                  return const Center(child: Loader());
                } else if (state.status == NoticeStatus.loaded) {
                  final notice = state.notice!;
                  final hasNext = notice.nextNoticeId != null;
                  final hasPrevious = notice.previousNoticeId != null;

                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 228, 232, 241)
                              )
                            )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 50),
                              Text(
                                context.read<NoticeBloc>().course.name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 30, 30, 30)
                                )
                              ),
                              const SizedBox(height: 10),
                              Text(
                                notice.title,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 30, 30, 30)
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset('lib/assets/svgs/notice/person.svg'),
                                  const SizedBox(width: 7),
                                  Text(
                                    context.read<NoticeBloc>().course.professor,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
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
                              ),
                              const SizedBox(height: 20)
                            ]
                          )
                        ),
                        const SizedBox(height: 20),
                        Text(''),
                        const SizedBox(height: 30),
                        Column(
                          children: [
                            if (hasNext)
                              GestureDetector(
                                onTap: () => Navigator.pushReplacement(context, NoticeMainScreen.route(course: context.read<NoticeBloc>().course, noticeId: notice.nextNoticeId!)),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                                  decoration: BoxDecoration(
                                    borderRadius: hasPrevious ? const BorderRadius.vertical(top: Radius.circular(20)) : BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 237, 239, 242)
                                    )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text('다음글', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                                          const SizedBox(width: 10),
                                          Text(notice.nextNoticeTitle!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))
                                        ]
                                      ),
                                      SvgPicture.asset('lib/assets/svgs/notice/right_arrow.svg')
                                    ]
                                  )
                                )
                              ),
                            if (hasPrevious)
                              GestureDetector(
                                onTap: () => Navigator.pushReplacement(context, NoticeMainScreen.route(course: context.read<NoticeBloc>().course, noticeId: notice.previousNoticeId!)),
                                  child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                                  decoration: BoxDecoration(
                                    borderRadius: hasNext ? const BorderRadius.vertical(bottom: Radius.circular(20)) : BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 237, 239, 242)
                                    )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text('이전글', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                                          const SizedBox(width: 10),
                                          Text(notice.previousNoticeTitle!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))
                                        ]
                                      ),
                                      SvgPicture.asset('lib/assets/svgs/notice/right_arrow.svg')
                                    ]
                                  )
                                )
                              )
                          ]
                        )
                      ]
                    )
                  );
                } else {
                  return const Center(child: Text('공지사항을 불러오지 못했어요'));
                }
              }
            )
          )
        )
      )
    );
  }
}