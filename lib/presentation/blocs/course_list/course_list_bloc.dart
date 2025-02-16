import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  CourseListBloc({
    required CourseRepository courseRepository,
  }) : super(const CourseListState(status: CourseListStatus.loading)) {
    _fetchCourseListUseCase =
        FetchCourseListUseCase(courseRepository: courseRepository);

    on<FetchCourses>(_onFetchCourses);
  }

  late final FetchCourseListUseCase _fetchCourseListUseCase;

  /// 강좌 목록 데이터를 요청합니다.
  Future<void> _onFetchCourses(
      FetchCourses event, Emitter<CourseListState> emit) async {
    try {
      final courseList = await _fetchCourseListUseCase.call();
      emit(state.copyWith(
          status: CourseListStatus.loaded, courseList: courseList));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: CourseListStatus.error, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: CourseListStatus.error, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: CourseListStatus.error, errorMessage: '강좌를 불러오지 못했어요'));
    }
  }
}
