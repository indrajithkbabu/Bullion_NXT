import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'future_event.dart';
part 'future_state.dart';

class FutureBloc extends Bloc<FutureEvent, FutureState> {
  FutureBloc() : super(const FutureState()) {
    on<FutureEvent>((event, emit) {});
    on<IncrementStocks999IndSellDiff>(_incrementStocks999IndSellDiff);
    on<DecrementStocks999IndSellDiff>(_decrementStocks999IndSellDiff);
    on<IncrementStocks999ImpSellDiff>(_incrementStocks999ImpSellDiff);
    on<DecrementStocks999ImpSellDiff>(_decrementStocks999ImpSellDiff);
    on<IncrementStocks995IndSellDiff>(_incrementStocks995IndSellDiff);
    on<DecrementStocks995IndSellDiff>(_decrementStocks995IndSellDiff);
    on<IncrementStocks995ImpSellDiff>(_incrementStocks995ImpSellDiff);
    on<DecrementStocks995ImpSellDiff>(_decrementStocks995ImpSellDiff);
    on<IncrementStocks9999IndSellDiff>(_incrementStocks9999IndSellDiff);
    on<DecrementStocks9999IndSellDiff>(_decrementStocks9999IndSellDiff);
    on<IncrementStocks9999ImpSellDiff>(_incrementStocks9999ImpSellDiff);
    on<DecrementStocks9999ImpSellDiff>(_decrementStocks9999ImpSellDiff);
    on<ToggleStock999IndDisplay>(_toggleStock999IndDisplay);
    on<ToggleStock999ImpDisplay>(_toggleStock999ImpDisplay);
    on<ToggleStock995IndDisplay>(_toggleStock995IndDisplay);
    on<ToggleStock995ImpDisplay>(_toggleStock995ImpDisplay);
    on<ToggleStock9999IndDisplay>(_toggleStock9999IndDisplay);
    on<ToggleStock9999ImpDisplay>(_toggleStock9999ImpDisplay);
    //buying price

    on<ToggleStock999IndBuyDiffDisplay>(_toggleStock999IndBuyDiffDisplay);
    on<ToggleStock999ImpBuyDiffDisplay>(_toggleStock999ImpBuyDiffDisplay);
    on<ToggleStock995IndBuyDiffDisplay>(_toggleStock995IndBuyDiffDisplay);
    on<ToggleStock995ImpBuyDiffDisplay>(_toggleStock995ImpBuyDiffDisplay);
    on<ToggleStock9999IndBuyDiffDisplay>(_toggleStock9999IndBuyDiffDisplay);
    on<ToggleStock9999ImpBuyDiffDisplay>(_toggleStock9999ImpBuyDiffDisplay);

    on<IncrementStocks999IndBuyDiff>(_incrementStocks999IndBuyDiff);
    on<DecrementStocks999IndBuyDiff>(_decrementStocks999IndBuyDiff);
    on<IncrementStocks999ImpBuyDiff>(_incrementStocks999ImpBuyDiff);
    on<DecrementStocks999ImpBuyDiff>(_decrementStocks999ImpBuyDiff);
    on<IncrementStocks995IndBuyDiff>(_incrementStocks995IndBuyDiff);
    on<DecrementStocks995IndBuyDiff>(_decrementStocks995IndBuyDiff);
    on<IncrementStocks995ImpBuyDiff>(_incrementStocks995ImpBuyDiff);
    on<DecrementStocks995ImpBuyDiff>(_decrementStocks995ImpBuyDiff);
    on<IncrementStocks9999IndBuyDiff>(_incrementStocks9999IndBuyDiff);
    on<DecrementStocks9999IndBuyDiff>(_decrementStocks9999IndBuyDiff);
    on<IncrementStocks9999ImpBuyDiff>(_incrementStocks9999ImpBuyDiff);
    on<DecrementStocks9999ImpBuyDiff>(_decrementStocks9999ImpBuyDiff);
  }

  FutureOr<void> _incrementStocks999IndSellDiff(
      IncrementStocks999IndSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock999IndSellDiff;
    sellDiffValue++;
    emit(state.copyWith(stock999IndSellDiff: sellDiffValue));
  }

  FutureOr<void> _decrementStocks999IndSellDiff(
      DecrementStocks999IndSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock999IndSellDiff;
    sellDiffValue--;
    emit(state.copyWith(stock999IndSellDiff: sellDiffValue));
  }

  FutureOr<void> _toggleStock999IndDisplay(
      ToggleStock999IndDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock999IndSellDiff: event.enableStock999IndSellDiff));
  }

  FutureOr<void> _toggleStock999ImpDisplay(
      ToggleStock999ImpDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock999ImpSellDiff: event.enableStock999ImpSellDiff));
  }

  FutureOr<void> _toggleStock995IndDisplay(
      ToggleStock995IndDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock995IndSellDiff: event.enableStock995IndSellDiff));
  }

  FutureOr<void> _toggleStock995ImpDisplay(
      ToggleStock995ImpDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock995ImpSellDiff: event.enableStock995ImpSellDiff));
  }

  FutureOr<void> _toggleStock9999IndDisplay(
      ToggleStock9999IndDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock9999IndSellDiff: event.enableStock9999IndSellDiff));
  }

  FutureOr<void> _toggleStock9999ImpDisplay(
      ToggleStock9999ImpDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock9999ImpSellDiff: event.enableStock9999ImpSellDiff));
  }

  FutureOr<void> _incrementStocks995IndSellDiff(
      IncrementStocks995IndSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock995IndSellDiff;
    sellDiffValue++;
    emit(state.copyWith(stock995IndSellDiff: sellDiffValue));
  }

  FutureOr<void> _decrementStocks995ImpSellDiff(
      DecrementStocks995ImpSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock995ImpSellDiff;
    sellDiffValue--;
    emit(state.copyWith(stock995ImpSellDiff: sellDiffValue));
  }

  FutureOr<void> _incrementStocks9999IndSellDiff(
      IncrementStocks9999IndSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock9999IndSellDiff;
    sellDiffValue++;
    emit(state.copyWith(stock9999IndSellDiff: sellDiffValue));
  }

  FutureOr<void> _decrementStocks9999ImpSellDiff(
      DecrementStocks9999ImpSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock9999ImpSellDiff;
    sellDiffValue--;
    emit(state.copyWith(stock9999ImpSellDiff: sellDiffValue));
  }

  FutureOr<void> _decrementStocks995IndSellDiff(
      DecrementStocks995IndSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock995IndSellDiff;
    sellDiffValue--;
    emit(state.copyWith(stock995IndSellDiff: sellDiffValue));
  }

  FutureOr<void> _incrementStocks995ImpSellDiff(
      IncrementStocks995ImpSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock995ImpSellDiff;
    sellDiffValue++;
    emit(state.copyWith(stock995ImpSellDiff: sellDiffValue));
  }

  FutureOr<void> _decrementStocks9999IndSellDiff(
      DecrementStocks9999IndSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock9999IndSellDiff;
    sellDiffValue--;
    emit(state.copyWith(stock9999IndSellDiff: sellDiffValue));
  }

  FutureOr<void> _incrementStocks9999ImpSellDiff(
      IncrementStocks9999ImpSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock9999ImpSellDiff;
    sellDiffValue++;
    emit(state.copyWith(stock9999ImpSellDiff: sellDiffValue));
  }

  FutureOr<void> _incrementStocks999ImpSellDiff(
      IncrementStocks999ImpSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock999ImpSellDiff;
    sellDiffValue++;
    emit(state.copyWith(stock999ImpSellDiff: sellDiffValue));
  }

  FutureOr<void> _decrementStocks999ImpSellDiff(
      DecrementStocks999ImpSellDiff event, Emitter<FutureState> emit) {
    var sellDiffValue = state.stock999ImpSellDiff;
    sellDiffValue--;
    emit(state.copyWith(stock999ImpSellDiff: sellDiffValue));
  }

  FutureOr<void> _toggleStock999IndBuyDiffDisplay(
      ToggleStock999IndBuyDiffDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock999IndBuyDiff: event.enableStock999IndBuyDiff));
  }

  FutureOr<void> _toggleStock999ImpBuyDiffDisplay(
      ToggleStock999ImpBuyDiffDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock999ImpBuyDiff: event.enableStock999ImpBuyDiff));
  }

  FutureOr<void> _toggleStock995IndBuyDiffDisplay(
      ToggleStock995IndBuyDiffDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock995IndBuyDiff: event.enableStock995IndBuyDiff));
  }

  FutureOr<void> _toggleStock995ImpBuyDiffDisplay(
      ToggleStock995ImpBuyDiffDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock995ImpBuyDiff: event.enableStock995ImpBuyDiff));
  }

  FutureOr<void> _toggleStock9999IndBuyDiffDisplay(
      ToggleStock9999IndBuyDiffDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock9999IndBuyDiff: event.enableStock9999IndBuyDiff));
  }

  FutureOr<void> _toggleStock9999ImpBuyDiffDisplay(
      ToggleStock9999ImpBuyDiffDisplay event, Emitter<FutureState> emit) {
    emit(state.copyWith(
        enableStock9999ImpBuyDiff: event.enableStock9999ImpBuyDiff));
  }

  FutureOr<void> _incrementStocks999IndBuyDiff(
      IncrementStocks999IndBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock999IndBuyDiff;
    buyDiffValue++;
    emit(state.copyWith(stock999IndBuyDiff: buyDiffValue));
  }

  FutureOr<void> _decrementStocks999IndBuyDiff(
      DecrementStocks999IndBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock999IndBuyDiff;
    buyDiffValue--;
    emit(state.copyWith(stock999IndBuyDiff: buyDiffValue));
  }

  FutureOr<void> _incrementStocks999ImpBuyDiff(
      IncrementStocks999ImpBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock999ImpBuyDiff;
    buyDiffValue++;
    emit(state.copyWith(stock999ImpBuyDiff: buyDiffValue));
  }

  FutureOr<void> _decrementStocks999ImpBuyDiff(
      DecrementStocks999ImpBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock999ImpBuyDiff;
    buyDiffValue--;
    emit(state.copyWith(stock999ImpBuyDiff: buyDiffValue));
  }

  FutureOr<void> _incrementStocks995IndBuyDiff(
      IncrementStocks995IndBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock995IndBuyDiff;
    buyDiffValue++;
    emit(state.copyWith(stock995IndBuyDiff: buyDiffValue));
  }

  FutureOr<void> _decrementStocks995IndBuyDiff(
      DecrementStocks995IndBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock995IndBuyDiff;
    buyDiffValue--;
    emit(state.copyWith(stock995IndBuyDiff: buyDiffValue));
  }

  FutureOr<void> _incrementStocks995ImpBuyDiff(
      IncrementStocks995ImpBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock995ImpBuyDiff;
    buyDiffValue++;
    emit(state.copyWith(stock995ImpBuyDiff: buyDiffValue));
  }

  FutureOr<void> _decrementStocks995ImpBuyDiff(
      DecrementStocks995ImpBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock995ImpBuyDiff;
    buyDiffValue--;
    emit(state.copyWith(stock995ImpBuyDiff: buyDiffValue));
  }

  FutureOr<void> _incrementStocks9999IndBuyDiff(
      IncrementStocks9999IndBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock9999IndBuyDiff;
    buyDiffValue++;
    emit(state.copyWith(stock9999IndBuyDiff: buyDiffValue));
  }

  FutureOr<void> _decrementStocks9999IndBuyDiff(
      DecrementStocks9999IndBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock9999IndBuyDiff;
    buyDiffValue--;
    emit(state.copyWith(stock9999IndBuyDiff: buyDiffValue));
  }

  FutureOr<void> _incrementStocks9999ImpBuyDiff(
      IncrementStocks9999ImpBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock9999ImpBuyDiff;
    buyDiffValue++;
    emit(state.copyWith(stock9999ImpBuyDiff: buyDiffValue));
  }

  FutureOr<void> _decrementStocks9999ImpBuyDiff(
      DecrementStocks9999ImpBuyDiff event, Emitter<FutureState> emit) {
    var buyDiffValue = state.stock9999ImpBuyDiff;
    buyDiffValue--;
    emit(state.copyWith(stock9999ImpBuyDiff: buyDiffValue));
  }
}
