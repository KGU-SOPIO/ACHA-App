import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({
    required CourseRepository courseRepository,
  }) : super(const ActivityState(status: ActivityStatus.loading)) {
    _fetchActivitiesUseCase = FetchActivitiesUseCase(
      courseRepository: courseRepository,
    );

    on<FetchActivities>(_onFetchActivities);
  }

  late final FetchActivitiesUseCase _fetchActivitiesUseCase;

  /// 활동 데이터를 요청합니다.
  Future<void> _onFetchActivities(
    FetchActivities event,
    Emitter<ActivityState> emit,
  ) async {
    try {
      final retult = await _fetchActivitiesUseCase.call();
      retult.fold(
        (errorMessage) => emit(state.copyWith(
          status: ActivityStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: ActivityStatus.loaded,
          activityList: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: ActivityStatus.error,
        errorMessage: '활동을 불러오지 못했어요',
      ));
    }
  }
}
