import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/course_list/index.dart';

import 'package:acha/screens/course/course_main.dart';

import 'package:acha/widgets/containers/index.dart';

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
    context.read<CourseListBloc>().add(const CourseListEvent.fetchCourses());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AchaAppbar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [
                    _buildHeader(),
                    const SizedBox(height: 18),
                    _buildContent()
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const Text(
          '나의 강좌',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 30, 30, 30)
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset('lib/assets/svgs/course/book.svg')
      ],
    );
  }

  Widget _buildContent() {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.status == CourseListStatus.loading) {
          return const Loader(height: 500);
        } else if (state.status == CourseListStatus.loaded) {
          return _buildLoadedContent(state);
        } else {
          return SizedBox(height: 500, child: Center(child: Text(state.errorMessage!, style: const TextStyle(fontSize: 15))));
        }
      }
    );
  }
  
  Widget _buildLoadedContent(CourseListState state) {
    final courseList = state.courseList?.courses;
    if (courseList == null) {
      return const SizedBox(height: 500, child: Center(child: Text('등록된 강좌가 없어요', style: TextStyle(fontSize: 15))));
    }
    
    return Column(
      children: [
        ...courseList.map((course) {
          return CourseContainer(
            professorName: course.professor,
            courseName: course.name,
            lectureRoom: course.lectureRoom,
            deadline: course.deadline,
            onTap: () => Navigator.push(context, CourseMainScreen.route(course: course))
          );
        }),
        const SizedBox(height: 16)
      ]
    );
  }
}