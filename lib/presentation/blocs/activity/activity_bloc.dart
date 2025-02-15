import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({required this.courseRepository})
      : super(const ActivityState(status: ActivityStatus.loading)) {
    on<FetchActivities>(_onFetchActivities);
  }

  final CourseRepository courseRepository;

  /// 활동 데이터를 요청합니다.
  Future<void> _onFetchActivities(
      FetchActivities event, Emitter<ActivityState> emit) async {
    try {
      final weekActivities = await courseRepository.fetchActivities();
      emit(state.copyWith(
          status: ActivityStatus.loaded, weekActivities: weekActivities));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: ActivityStatus.error, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: ActivityStatus.error, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: ActivityStatus.error, errorMessage: '활동을 불러오지 못했어요'));
    }
  }
}
