part of 'navigation_bloc.dart';

abstract class TabEvent extends Equatable {
  const TabEvent();

  @override
  List <Object?> get props => [];
}

class TabChanged extends TabEvent {
  final int newIndex;

  const TabChanged(this.newIndex);

  @override
  List<Object?> get props => [newIndex];
}