import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/core/constants/index.dart';
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
        color: AchaColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: AchaColors.gray228_232_241,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 15),
          BlocBuilder<TodayCourseBloc, TodayCourseState>(
            builder: _buildContent,
          ),
        ],
      ),
    );
  }

  /// 제목을 빌드합니다.
  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 16,
              color: AchaColors.gray30,
            ),
            children: [
              TextSpan(
                text: '오늘의 ',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: '강좌',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            DateTime.now().formatDate(pattern: 'M월 d일'),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AchaColors.primaryBlue,
            ),
          ),
        ),
      ],
    );
  }

  /// 강좌 표시 부분을 빌드합니다.
  Widget _buildContent(BuildContext context, TodayCourseState state) {
    switch (state.status) {
      case TodayCourseStatus.loading:
        return const Loader(height: 97);
      case TodayCourseStatus.error:
        return _buildMessage(state.errorMessage ?? '강좌를 불러오지 못했어요');
      case TodayCourseStatus.loaded:
        final courseList = state.todayCourses;
        if (courseList == null || courseList.contents.isEmpty) {
          return _buildMessage('오늘은 공강이에요');
        }
        return Column(
            children: courseList.contents
                .map((course) => _buildCourseContainer(course))
                .toList());
    }
  }

  /// 강좌 컨테이너를 빌드합니다.
  Widget _buildCourseContainer(Course course) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, CourseMainScreen.route(course: course)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: AchaColors.gray237_239_242,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: _buildCourseInfo(course),
        ),
      ),
    );
  }

  /// 강좌 정보 텍스트를 빌드합니다.
  Widget _buildCourseInfo(Course course) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${course.professor} 교수',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray109,
          ),
        ),
        const SizedBox(height: 3),
        AutoSizeText(
          course.title,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AchaColors.black,
          ),
        ),
        const SizedBox(height: 2),
        AutoSizeText(
          course.lectureRoom,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray109,
          ),
        )
      ],
    );
  }

  /// 상태 메세지를 빌드합니다.
  Widget _buildMessage(String message) {
    return SizedBox(
      height: 97,
      child: Center(
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 15,
            color: AchaColors.gray109,
          ),
        ),
      ),
    );
  }
}
