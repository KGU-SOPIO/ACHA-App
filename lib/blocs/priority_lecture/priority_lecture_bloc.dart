import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/priority_lecture.dart';
import 'package:acha/blocs/priority_lecture/index.dart';

class PriorityLectureBloc extends Bloc<PriorityLectureEvent, PriorityLectureState> {
  PriorityLectureBloc({required this.priorityLectureRepository}) : super(const PriorityLectureState(status: PriorityLectureStatus.loading)) {
    on<Fetch>(_onFetchPriorityLectures);
  }

  final PriorityLectureRepository priorityLectureRepository;

  /// 우선과제 정보를 요청합니다.
  Future<void> _onFetchPriorityLectures(Fetch event, Emitter<PriorityLectureState> emit) async {
    try {
      final PriorityLectures priorityLectures = await priorityLectureRepository.fetchLectures();
      emit(state.copyWith(status: PriorityLectureStatus.loaded, priorityLectures: priorityLectures));
    } on DioException catch (e) {
      emit(state.copyWith(status: PriorityLectureStatus.error, message: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: PriorityLectureStatus.error, message: '우선강의 정보를 불러오지 못했어요'));
    }
  }
}