import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>((event, emit) {});
    on<MarketFilterTabSelectionEvent>(_marketFilterTabSelection);
  }

  Future<void> _marketFilterTabSelection(
      MarketFilterTabSelectionEvent event, Emitter<HomeState> emit) async {
    if (state.selectedIndex == event.selectedMarketTabIndex) {
      // Deselect the tab if it is already selected
      emit(state.copyWith(selectedIndex: null));
    } else {
      // Select the new tab
      emit(state.copyWith(selectedIndex: event.selectedMarketTabIndex));
    }
  }
}
