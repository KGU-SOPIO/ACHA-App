import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/today_course/index.dart';

class TodayCourseBloc extends Bloc<TodayCourseEvent, TodayCourseState> {
  TodayCourseBloc({required this.todayCourseRepository}) : super(const TodayCourseState(status: TodayCourseStatus.loading)) {
    on<Fetch>(_onFetchTodayCourses);
  }

  final TodayCourseRepository todayCourseRepository;

  /// 오늘의 강의 정보를 요청합니다.
  Future<void> _onFetchTodayCourses(Fetch event, Emitter<TodayCourseState> emit) async {
    try {
      final Courses todayCourses = await todayCourseRepository.fetchTodayCourses();
      emit(state.copyWith(status: TodayCourseStatus.loaded, todayCourses: todayCourses));
    } on DioException catch (e) {
      emit(state.copyWith(status: TodayCourseStatus.error, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: TodayCourseStatus.error, errorMessage: '오늘의 강의 정보를 불러오지 못했어요'));
    }
  }
}