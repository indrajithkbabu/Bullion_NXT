import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'metal_event.dart';
part 'metal_state.dart';

class MetalBloc extends Bloc<MetalEvent, MetalState> {
  MetalBloc() : super(const MetalState()) {
    on<MetalEvent>((event, emit) {});
    //metal
    on<Toggle100gSwitch>(_toggle100gSwitch);
    on<Toggle200gSwitch>(_toggle200gSwitch);
    on<Toggle500gSwitch>(_toggle500gSwitch);
    on<Toggle1kgSwitch>(_toggle1kgSwitch);
    on<Toggle2kgSwitch>(_toggle2kgSwitch);
    on<Toggle5kgSwitch>(_toggle5kgSwitch);
    on<Toggle10kgSwitch>(_toggle10kgSwitch);
    on<SelectTimePeriod100g>(_selectTimePeriod100g);
    on<SelectTimePeriod200g>(_selectTimePeriod200g);
    on<SelectTimePeriod500g>(_selectTimePeriod500g);
    on<SelectTimePeriod1kg>(_selectTimePeriod1kg);
    on<SelectTimePeriod2kg>(_selectTimePeriod2kg);
    on<SelectTimePeriod5kg>(_selectTimePeriod5kg);
    on<SelectTimePeriod10kg>(_selectTimePeriod10kg);
    on<SetBuyDiff100g>(_setBuyDiff100g);
    on<SetBuyDiff200g>(_setBuyDiff200g);
    on<SetBuyDiff500g>(_setBuyDiff500g);
    on<SetBuyDiff1kg>(_setBuyDiff1kg);
    on<SetBuyDiff2kg>(_setBuyDiff2kg);
    on<SetBuyDiff5kg>(_setBuyDiff5kg);
    on<SetBuyDiff10kg>(_setBuyDiff10kg);
    on<SetSellDiff100g>(_setSellDiff100g);
    on<SetSellDiff200g>(_setSellDiff200g);
    on<SetSellDiff500g>(_setSellDiff500g);
    on<SetSellDiff1kg>(_setSellDiff1kg);
    on<SetSellDiff2kg>(_setSellDiff2kg);
    on<SetSellDiff5kg>(_setSellDiff5kg);
    on<SetSellDiff10kg>(_setSellDiff10kg);
  }

  Future<void> _toggle100gSwitch(
      Toggle100gSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is100gEnabled: event.is100gEnabled));
  }

  Future<void> _toggle200gSwitch(
      Toggle200gSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is200gEnabled: event.is200gEnabled));
  }

  Future<void> _toggle500gSwitch(
      Toggle500gSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is500gEnabled: event.is500gEnabled));
  }

  Future<void> _toggle1kgSwitch(
      Toggle1kgSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is1kgEnabled: event.is1kgEnabled));
  }

  Future<void> _toggle2kgSwitch(
      Toggle2kgSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is2kgEnabled: event.is2kgEnabled));
  }

  Future<void> _toggle5kgSwitch(
      Toggle5kgSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is5kgEnabled: event.is5kgEnabled));
  }

  Future<void> _toggle10kgSwitch(
      Toggle10kgSwitch event, Emitter<MetalState> emit) async {
    emit(state.copyWith(is10kgEnabled: event.is10kgEnabled));
  }

  FutureOr<void> _selectTimePeriod100g(
      SelectTimePeriod100g event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod100g: event.timePeriod100g));
  }

  FutureOr<void> _selectTimePeriod200g(
      SelectTimePeriod200g event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod200g: event.timePeriod200g));
  }

  FutureOr<void> _selectTimePeriod500g(
      SelectTimePeriod500g event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod500g: event.timePeriod500g));
  }

  FutureOr<void> _selectTimePeriod1kg(
      SelectTimePeriod1kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod1kg: event.timePeriod1kg));
  }

  FutureOr<void> _selectTimePeriod2kg(
      SelectTimePeriod2kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod2kg: event.timePeriod2kg));
  }

  FutureOr<void> _selectTimePeriod5kg(
      SelectTimePeriod5kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod5kg: event.timePeriod5kg));
  }

  FutureOr<void> _selectTimePeriod10kg(
      SelectTimePeriod10kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(timePeriod10kg: event.timePeriod10kg));
  }

  FutureOr<void> _setBuyDiff100g(
      SetBuyDiff100g event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff100g: event.buyDiff100g));
  }

  FutureOr<void> _setBuyDiff200g(
      SetBuyDiff200g event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff200g: event.buyDiff200g));
  }

  FutureOr<void> _setBuyDiff500g(
      SetBuyDiff500g event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff500g: event.buyDiff500g));
  }

  FutureOr<void> _setBuyDiff1kg(SetBuyDiff1kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff1kg: event.buyDiff1kg));
  }

  FutureOr<void> _setBuyDiff2kg(SetBuyDiff2kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff2kg: event.buyDiff2kg));
  }

  FutureOr<void> _setBuyDiff5kg(SetBuyDiff5kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff5kg: event.buyDiff5kg));
  }

  FutureOr<void> _setBuyDiff10kg(
      SetBuyDiff10kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(buyDiff10kg: event.buyDiff10kg));
  }

  FutureOr<void> _setSellDiff100g(
      SetSellDiff100g event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff100g: event.sellDiff100g));
  }

  FutureOr<void> _setSellDiff200g(
      SetSellDiff200g event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff200g: event.sellDiff200g));
  }

  FutureOr<void> _setSellDiff500g(
      SetSellDiff500g event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff500g: event.sellDiff500g));
  }

  FutureOr<void> _setSellDiff1kg(
      SetSellDiff1kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff1kg: event.sellDiff1kg));
  }

  FutureOr<void> _setSellDiff2kg(
      SetSellDiff2kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff2kg: event.sellDiff2kg));
  }

  FutureOr<void> _setSellDiff5kg(
      SetSellDiff5kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff5kg: event.sellDiff5kg));
  }

  FutureOr<void> _setSellDiff10kg(
      SetSellDiff10kg event, Emitter<MetalState> emit) {
    emit(state.copyWith(sellDiff10kg: event.sellDiff10kg));
  }
}
