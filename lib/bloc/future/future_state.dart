// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'future_bloc.dart';

class FutureState extends Equatable {
  const FutureState({ this.stock999IndSellDiff = 0,
    this.stock999ImpSellDiff = 0,
    this.stock995IndSellDiff = 0,
    this.stock995ImpSellDiff = 0,
    this.stock9999IndSellDiff = 0,
    this.stock9999ImpSellDiff = 0,
    this.enableStock999IndSellDiff = false,
    this.enableStock999ImpSellDiff = false,
    this.enableStock995IndSellDiff = false,
    this.enableStock995ImpSellDiff = false,
    this.enableStock9999IndSellDiff = false,
    this.enableStock9999ImpSellDiff = false,
    this.stock999IndBuyDiff = 0,
    this.stock999ImpBuyDiff = 0,
    this.stock995IndBuyDiff = 0,
    this.stock995ImpBuyDiff = 0,
    this.stock9999IndBuyDiff = 0,
    this.stock9999ImpBuyDiff = 0,
    this.enableStock999IndBuyDiff = false,
    this.enableStock999ImpBuyDiff = false,
    this.enableStock995IndBuyDiff = false,
    this.enableStock995ImpBuyDiff = false,
    this.enableStock9999IndBuyDiff = false,
    this.enableStock9999ImpBuyDiff = false,});
    final int stock999IndSellDiff;
  final int stock999ImpSellDiff;
  final int stock995IndSellDiff;
  final int stock995ImpSellDiff;
  final int stock9999IndSellDiff;
  final int stock9999ImpSellDiff;
  final bool enableStock999IndSellDiff;
  final bool enableStock999ImpSellDiff;
  final bool enableStock995IndSellDiff;
  final bool enableStock995ImpSellDiff;
  final bool enableStock9999IndSellDiff;
  final bool enableStock9999ImpSellDiff;

  //buying price

  final int stock999IndBuyDiff;
  final int stock999ImpBuyDiff;
  final int stock995IndBuyDiff;
  final int stock995ImpBuyDiff;
  final int stock9999IndBuyDiff;
  final int stock9999ImpBuyDiff;
  final bool enableStock999IndBuyDiff;
  final bool enableStock999ImpBuyDiff;
  final bool enableStock995IndBuyDiff;
  final bool enableStock995ImpBuyDiff;
  final bool enableStock9999IndBuyDiff;
  final bool enableStock9999ImpBuyDiff;
  @override
  List<Object> get props => [ stock999IndSellDiff,
        stock999ImpSellDiff,
        stock995IndSellDiff,
        stock995ImpSellDiff,
        stock9999IndSellDiff,
        stock9999ImpSellDiff,
        enableStock999IndSellDiff,
        enableStock999ImpSellDiff,
        enableStock995IndSellDiff,
        enableStock995ImpSellDiff,
        enableStock9999IndSellDiff,
        enableStock9999ImpSellDiff,
        stock999IndBuyDiff,
        stock999ImpBuyDiff,
        stock995IndBuyDiff,
        stock995ImpBuyDiff,
        stock9999IndBuyDiff,
        stock9999ImpBuyDiff,
        enableStock999IndBuyDiff,
        enableStock999ImpBuyDiff,
        enableStock995IndBuyDiff,
        enableStock995ImpBuyDiff,
        enableStock9999IndBuyDiff,
        enableStock9999ImpBuyDiff,];

  FutureState copyWith({
    int? stock999IndSellDiff,
    int? stock999ImpSellDiff,
    int? stock995IndSellDiff,
    int? stock995ImpSellDiff,
    int? stock9999IndSellDiff,
    int? stock9999ImpSellDiff,
    bool? enableStock999IndSellDiff,
    bool? enableStock999ImpSellDiff,
    bool? enableStock995IndSellDiff,
    bool? enableStock995ImpSellDiff,
    bool? enableStock9999IndSellDiff,
    bool? enableStock9999ImpSellDiff,
    int? stock999IndBuyDiff,
    int? stock999ImpBuyDiff,
    int? stock995IndBuyDiff,
    int? stock995ImpBuyDiff,
    int? stock9999IndBuyDiff,
    int? stock9999ImpBuyDiff,
    bool? enableStock999IndBuyDiff,
    bool? enableStock999ImpBuyDiff,
    bool? enableStock995IndBuyDiff,
    bool? enableStock995ImpBuyDiff,
    bool? enableStock9999IndBuyDiff,
    bool? enableStock9999ImpBuyDiff,
  }) {
    return FutureState(
      stock999IndSellDiff: stock999IndSellDiff ?? this.stock999IndSellDiff,
      stock999ImpSellDiff: stock999ImpSellDiff ?? this.stock999ImpSellDiff,
      stock995IndSellDiff: stock995IndSellDiff ?? this.stock995IndSellDiff,
      stock995ImpSellDiff: stock995ImpSellDiff ?? this.stock995ImpSellDiff,
      stock9999IndSellDiff: stock9999IndSellDiff ?? this.stock9999IndSellDiff,
      stock9999ImpSellDiff: stock9999ImpSellDiff ?? this.stock9999ImpSellDiff,
      enableStock999IndSellDiff: enableStock999IndSellDiff ?? this.enableStock999IndSellDiff,
      enableStock999ImpSellDiff: enableStock999ImpSellDiff ?? this.enableStock999ImpSellDiff,
      enableStock995IndSellDiff: enableStock995IndSellDiff ?? this.enableStock995IndSellDiff,
      enableStock995ImpSellDiff: enableStock995ImpSellDiff ?? this.enableStock995ImpSellDiff,
      enableStock9999IndSellDiff: enableStock9999IndSellDiff ?? this.enableStock9999IndSellDiff,
      enableStock9999ImpSellDiff: enableStock9999ImpSellDiff ?? this.enableStock9999ImpSellDiff,
      stock999IndBuyDiff: stock999IndBuyDiff ?? this.stock999IndBuyDiff,
      stock999ImpBuyDiff: stock999ImpBuyDiff ?? this.stock999ImpBuyDiff,
      stock995IndBuyDiff: stock995IndBuyDiff ?? this.stock995IndBuyDiff,
      stock995ImpBuyDiff: stock995ImpBuyDiff ?? this.stock995ImpBuyDiff,
      stock9999IndBuyDiff: stock9999IndBuyDiff ?? this.stock9999IndBuyDiff,
      stock9999ImpBuyDiff: stock9999ImpBuyDiff ?? this.stock9999ImpBuyDiff,
      enableStock999IndBuyDiff: enableStock999IndBuyDiff ?? this.enableStock999IndBuyDiff,
      enableStock999ImpBuyDiff: enableStock999ImpBuyDiff ?? this.enableStock999ImpBuyDiff,
      enableStock995IndBuyDiff: enableStock995IndBuyDiff ?? this.enableStock995IndBuyDiff,
      enableStock995ImpBuyDiff: enableStock995ImpBuyDiff ?? this.enableStock995ImpBuyDiff,
      enableStock9999IndBuyDiff: enableStock9999IndBuyDiff ?? this.enableStock9999IndBuyDiff,
      enableStock9999ImpBuyDiff: enableStock9999ImpBuyDiff ?? this.enableStock9999ImpBuyDiff,
    );
  }
}

