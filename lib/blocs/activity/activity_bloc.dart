import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/repository/index.dart';
import 'package:acha/models/index.dart';
import 'package:acha/blocs/activity/index.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({required this.courseRepository}) : super(const ActivityState(status: ActivityStatus.loading)) {
    on<Fetch>(_onFetchActivities);
  }

  final CourseRepository courseRepository;

  Future<void> _onFetchActivities(Fetch event, Emitter<ActivityState> emit) async {
    try {
      final Activities activities = await courseRepository.fetchActivities();
      emit(state.copyWith(status: ActivityStatus.loaded, activities: activities));
    } on DioException catch (e) {
      emit(state.copyWith(status: ActivityStatus.error, message: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: ActivityStatus.error, message: '활동을 불러오지 못했어요'));
    }
  }
}