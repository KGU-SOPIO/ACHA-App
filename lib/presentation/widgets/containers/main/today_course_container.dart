import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/core/extensions/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

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
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: const Color.fromARGB(255, 228, 232, 241),
          width: 1.5
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 15),
          BlocConsumer<TodayCourseBloc, TodayCourseState>(
            listener: _onTodayCourseStateChanged,
            builder: _buildContent
          )
        ]
      )
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text.rich(
          TextSpan(
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
          DateTime.now().formatDate(pattern: 'M월 d일'),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 102, 255)
          )
        )
      ]
    );
  }

  void _onTodayCourseStateChanged(BuildContext context, TodayCourseState state) {
    switch (state.status) {
      case TodayCourseStatus.error:
        GetIt.I<ToastManager>().error(message: state.errorMessage!);
        break;
      default:
        break;
    }
  }

  Widget _buildContent(BuildContext context, TodayCourseState state) {
    switch (state.status) {
      case TodayCourseStatus.loading:
        return const Loader(height: 97);
      case TodayCourseStatus.loaded:
        if (state.todayCourses == null) {
          return _buildEmptyCourse();
        }
        return _buildCourseList(state.todayCourses!);
      case TodayCourseStatus.error:
        return _buildError();
    }
  }

  Widget _buildCourseList(CourseList courses) {
    return Column(
      children: courses.courses.map((course) => _buildCourseContainer(course)).toList()
    );
  }

  Widget _buildCourseContainer(Course course) {
    return GestureDetector(
      onTap: () => Navigator.push(context, CourseMainScreen.route(course: course)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 237, 239, 242),
              width: 1.5
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: _buildCourseInformation(course)
        )
      )
    );
  }

  Widget _buildCourseInformation(Course course) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${course.professor} 교수',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 109, 109, 109)
          )
        ),
        const SizedBox(height: 3),
        AutoSizeText(
          course.name,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black
          )
        ),
        const SizedBox(height: 2),
        Text(
          course.lectureRoom,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black
          )
        )
      ]
    );
  }

  Widget _buildEmptyCourse() {
    return const SizedBox(
      height: 97,
      child: Center(
        child: Text(
          '오늘은 공강이에요',
          style: TextStyle(fontSize: 15)
        )
      )
    );
  }

  Widget _buildError() {
    return const SizedBox(
      height: 97,
      child: Center(
        child: Text(
          '강의를 불러오지 못했어요',
          style: TextStyle(fontSize: 15)
        )
      )
    );
  }
}