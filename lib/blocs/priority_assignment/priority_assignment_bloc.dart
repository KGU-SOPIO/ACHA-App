import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/priority_assignment.dart';
import 'package:acha/blocs/priority_assignment/index.dart';

class PriorityAssignmentBloc extends Bloc<PriorityAssignmentEvent, PriorityAssignmentState> {
  PriorityAssignmentBloc({required this.priorityAssignmentRepository}) : super(const PriorityAssignmentState(status: PriorityAssignmentStatus.loading)) {
    on<Fetch>(_onFetchPriorityAssignments);
  }

  final PriorityAssignmentRepository priorityAssignmentRepository;

  /// 우선과제 정보를 요청합니다.
  Future<void> _onFetchPriorityAssignments(Fetch event, Emitter<PriorityAssignmentState> emit) async {
    try {
      final PriorityAssignments priorityAssignments = await priorityAssignmentRepository.fetchAssignments();
      emit(state.copyWith(status: PriorityAssignmentStatus.loaded, priorityAssignments: priorityAssignments));
    } on DioException catch (e) {
      emit(state.copyWith(status: PriorityAssignmentStatus.error, message: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: PriorityAssignmentStatus.error, message: '우선과제 정보를 불러오지 못했어요'));
    }
  }
}