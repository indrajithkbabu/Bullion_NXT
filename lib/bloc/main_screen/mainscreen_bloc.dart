import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mainscreen_event.dart';
part 'mainscreen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(const MainScreenState()) {
    on<MainScreenEvent>((event, emit) {});
    on<SetBottomBarIndexEvent>(_setBottomBarIndex);
  }

  Future<void> _setBottomBarIndex(
      SetBottomBarIndexEvent event, Emitter<MainScreenState> emit) async {
    if (event.index == 0 || event.index == null) {
      emit(state.copyWith(selectedIndex: 0));
    } else {
      emit(state.copyWith(selectedIndex: event.index));
    }
  }
}
