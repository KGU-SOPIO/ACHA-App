import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<TabEvent, TabState> {
  NavigationBloc() : super(const TabState(selectedIndex: 0)) {
    on<ChangeTab>(
        (event, emit) => emit(TabState(selectedIndex: event.newIndex)));
  }
}
