part of 'navigation_bloc.dart';

class TabState extends Equatable {
  final int selectedIndex;

  const TabState({required this.selectedIndex});

  @override
  List <Object?> get props => [selectedIndex];
}