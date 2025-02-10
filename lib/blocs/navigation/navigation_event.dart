part of 'navigation_bloc.dart';

sealed class TabEvent extends Equatable {
  const TabEvent();

  @override
  List <Object?> get props => [];
}

class ChangeTab extends TabEvent {
  final int newIndex;

  const ChangeTab(this.newIndex);

  @override
  List<Object?> get props => [newIndex];
}