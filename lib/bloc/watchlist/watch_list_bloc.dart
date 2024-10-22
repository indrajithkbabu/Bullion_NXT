import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bullionnxtnew/presentation/home/home_screen.dart';
import 'package:equatable/equatable.dart';

part 'watch_list_event.dart';
part 'watch_list_state.dart';

class WatchListBloc extends Bloc<WatchListEvent, WatchListState> {
  WatchListBloc() : super(const WatchListState()) {
    on<WatchListEvent>((event, emit) {});
    on<AddToWatchlistEvent>(_addToWatchList);
  }

  Future<void> _addToWatchList(
      AddToWatchlistEvent event, Emitter<WatchListState> emit) async {
    // final updatedList =
    //     List<WholeSaleGoldDealers>.from(state.wholeSaleGoldDealerList)
    //       ..add(event.dealer);

 final updatedList = List<WholeSaleGoldDealers>.from(state.wholeSaleGoldDealerList)
    ..insert(0, event.dealer); // Insert the new dealer at the beginning of the list
    emit(state.copyWith(wholeSaleGoldDealerList: updatedList));

    // print('watchlist:::::: ${state.wholeSaleGoldDealerList}');
  }
}
