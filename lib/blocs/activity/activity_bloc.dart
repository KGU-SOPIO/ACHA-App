import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/activity/index.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({required this.courseRepository}) : super(const ActivityState(status: ActivityStatus.loading)) {
    on<Fetch>(_onFetchActivities);
  }

  final CourseRepository courseRepository;

  /// 활동 데이터를 요청합니다.
  Future<void> _onFetchActivities(Fetch event, Emitter<ActivityState> emit) async {
    try {
      final WeekActivities weekActivities = await courseRepository.fetchActivities();
      emit(state.copyWith(status: ActivityStatus.loaded, weekActivities: weekActivities));
    } on DioException catch (e) {
      emit(state.copyWith(status: ActivityStatus.error, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: ActivityStatus.error, errorMessage: '활동을 불러오지 못했어요'));
    }
  }
}