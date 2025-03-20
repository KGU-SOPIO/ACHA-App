import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

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
      backgroundColor: AchaColors.gray245_246_248,
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
                    _buildTitle(),
                    const SizedBox(height: 18),
                    _buildContent(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// 제목을 빌드합니다.
  Widget _buildTitle() {
    return Row(
      children: [
        const Text(
          '나의 강좌',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AchaColors.gray30,
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset('lib/assets/svgs/course/book.svg')
      ],
    );
  }

  /// 메인 위젯을 빌드합니다.
  Widget _buildContent() {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.status == CourseListStatus.loading) {
          return const Loader(height: 500);
        } else if (state.status == CourseListStatus.loaded) {
          return _buildLoadedContent(state);
        } else {
          return _buildError(state);
        }
      },
    );
  }

  /// 데이터 로딩 후 위젯을 빌드합니다.
  Widget _buildLoadedContent(CourseListState state) {
    final courseList = state.courseList?.contents;
    if (courseList == null || courseList.isEmpty) {
      return const SizedBox(
        height: 500,
        child: Center(
          child: Text(
            '등록된 강좌가 없어요',
            style: TextStyle(fontSize: 15),
          ),
        ),
      );
    }

    return Column(
      children: [
        ...courseList.map(
          (course) {
            return CourseContainer(
              professorName: course.professor,
              courseName: course.title,
              lectureRoom: course.lectureRoom,
              deadline: course.deadline,
              onTap: () => Navigator.push(
                context,
                CourseMainScreen.route(course: course),
              ),
            );
          },
        ),
        const SizedBox(height: 16)
      ],
    );
  }

  /// 오류 위젯을 빌드합니다.
  Widget _buildError(CourseListState state) {
    return SizedBox(
      height: 500,
      child: Center(
        child: Text(
          state.errorMessage!,
          style: const TextStyle(
            fontSize: 15,
            color: AchaColors.gray109,
          ),
        ),
      ),
    );
  }
}
