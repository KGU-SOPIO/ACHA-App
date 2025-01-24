import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/blocs/today_course/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/screens/course/course_main.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class TodayCourseContainer extends StatefulWidget {
  const TodayCourseContainer({super.key});

  @override
  State<TodayCourseContainer> createState() => _TodayCourseContainerState();
}

class _TodayCourseContainerState extends State<TodayCourseContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Color.fromARGB(255, 228, 232, 241),
          width: 1.5
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 30, 30, 30)
                  ),
                  children: [
                    TextSpan(
                      text: '오늘의 ',
                      style: TextStyle(fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text: '강의',
                      style: TextStyle(fontWeight: FontWeight.w700)
                    )
                  ]
                )
              ),
              Text(
                DateTime.now().formatDate(pattern: 'M월 D일'),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 102, 255)
                )
              )
            ]
          ),
          const SizedBox(height: 15),
          BlocConsumer<TodayCourseBloc, TodayCourseState>(
            listener: (context, state) {
              if (state.status == TodayCourseStatus.error) {
                GetIt.I<ToastManager>().error(message: state.errorMessage!);
              }
            },
            builder: (context, state) {
              if (state.status == TodayCourseStatus.loading) {
                return const Loader(height: 97);
              } else if (state.status == TodayCourseStatus.loaded) {
                final courses = state.todayCourses!.courses!;

                if (courses.isEmpty) {
                  return const SizedBox(
                    height: 97,
                    child: Center(child: Text('오늘은 공강이에요', style: TextStyle(fontSize: 15)))
                  );
                } else {
                  return Column(
                    children: courses.map((course) {
                      return GestureDetector(
                        onTap: () => Navigator.push(context, CourseMainScreen.route(course: course)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 237, 239, 242),
                                width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${course.professor} 교수',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 109, 109, 109)
                                      )
                                    ),
                                    const SizedBox(height: 3),
                                    AutoSizeText(
                                      course.name,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      )
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      course.lectureRoom,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      )
                                    )
                                  ]
                                ),
                                DDayBadge(deadline: course.deadline!)
                              ]
                            )
                          )
                        )
                      );
                    }).toList()
                  );
                }
              } else {
                return const SizedBox(
                  height: 97,
                  child: Center(child: Text('강의를 불러오지 못했어요', style: TextStyle(fontSize: 15)))
                );
              }
            }
          )
        ]
      )
    );
  }
}