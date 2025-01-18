import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/course_list/index.dart';

import 'package:acha/screens/course/course_main.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const CourseScreen());
  }
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CourseListBloc>().add(CourseListEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: AchaAppbar()
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Text(
                              '나의 강좌',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 30, 30, 30)
                              ),
                            )
                          ),
                          SvgPicture.asset('lib/assets/svgs/course/book.svg')
                        ],
                      )
                    ),
                    BlocConsumer<CourseListBloc, CourseListState>(
                      listener: (context, state) {
                        if (state.status == CourseListStatus.error) {
                          GetIt.I<ToastManager>().error(message: state.errorMessage!);
                        }
                      },
                      builder: (context, state) {
                        if (state.status == CourseListStatus.loading) {
                          return const Loader(height: 500);
                        } else if (state.status == CourseListStatus.loaded) {
                          final courses = state.courses!.courses!;
                          
                          if (courses.isEmpty) {
                            return const SizedBox(height: 500, child: Center(child: Text('등록된 강좌가 없어요', style: TextStyle(fontSize: 15))));
                          }
                          
                          return Column(
                            children: [
                              ...courses.map((course) {
                                return CourseContainer(
                                  professorName: course.professor,
                                  courseName: course.name,
                                  lectureRoom: course.lectureRoom,
                                  deadline: course.deadline,
                                  onTap: () => Navigator.push(context, CourseMainScreen.route(course: course)),
                                );
                              }),
                              const SizedBox(height: 16)
                            ]
                          );
                        } else {
                          return SizedBox(height: 500, child: Center(child: Text(state.errorMessage!, style: TextStyle(fontSize: 15))));
                        }
                      }
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}