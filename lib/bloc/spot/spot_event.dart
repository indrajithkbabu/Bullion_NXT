part of 'spot_bloc.dart';

abstract class SpotEvent extends Equatable {}

class Gold999IndCustomTaxTypeRadioSelection extends SpotEvent {
  final int gold999IndCustomTaxTypeRadioValue;

  Gold999IndCustomTaxTypeRadioSelection(
      {required this.gold999IndCustomTaxTypeRadioValue});
  @override
  List<Object?> get props => [gold999IndCustomTaxTypeRadioValue];
}

class Gold999ImpCustomTaxTypeRadioSelection extends SpotEvent {
  final int gold999ImpCustomTaxTypeRadioValue;

  Gold999ImpCustomTaxTypeRadioSelection(
      {required this.gold999ImpCustomTaxTypeRadioValue});
  @override
  List<Object?> get props => [gold999ImpCustomTaxTypeRadioValue];
}

class SetPremiumGold999Ind extends SpotEvent {
  final String premiumGold999Ind;

  SetPremiumGold999Ind({required this.premiumGold999Ind});
  @override
  List<Object?> get props => [premiumGold999Ind];
}

class SetPremiumGold999Imp extends SpotEvent {
  final String premiumGold999Imp;

  SetPremiumGold999Imp({required this.premiumGold999Imp});
  @override
  List<Object?> get props => [premiumGold999Imp];
}

class SetPremiumOnINRGold999Ind extends SpotEvent {
  final String premiumOnINRGold999Ind;

  SetPremiumOnINRGold999Ind({required this.premiumOnINRGold999Ind});
  @override
  List<Object?> get props => [premiumOnINRGold999Ind];
}

class SetPremiumOnINRGold999Imp extends SpotEvent {
  final String premiumOnINRGold999Imp;

  SetPremiumOnINRGold999Imp({required this.premiumOnINRGold999Imp});
  @override
  List<Object?> get props => [premiumOnINRGold999Imp];
}

class SetCustomTaxGold999Ind extends SpotEvent {
  final String customTaxGold999Ind;

  SetCustomTaxGold999Ind({required this.customTaxGold999Ind});
  @override
  List<Object?> get props => [customTaxGold999Ind];
}

class SetCustomTaxGold999Imp extends SpotEvent {
  final String customTaxGold999Imp;

  SetCustomTaxGold999Imp({required this.customTaxGold999Imp});
  @override
  List<Object?> get props => [customTaxGold999Imp];
}

class ToggleGold999IndDisplay extends SpotEvent {
  final bool enableGold999Ind;

  ToggleGold999IndDisplay({required this.enableGold999Ind});
  @override
  List<Object?> get props => [enableGold999Ind];
}

class ToggleGold999ImpDisplay extends SpotEvent {
  final bool enableGold999Imp;

  ToggleGold999ImpDisplay({required this.enableGold999Imp});
  @override
  List<Object?> get props => [enableGold999Imp];
}

class IncrementStocks999IndSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks999IndSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks999ImpSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks999ImpSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks995IndSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks995IndSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks995ImpSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks995ImpSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks9999IndSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks9999IndSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks9999ImpSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks9999ImpSellDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class ToggleStock999IndDisplay extends SpotEvent {
  final bool enableStock999IndSellDiff;

  ToggleStock999IndDisplay({required this.enableStock999IndSellDiff});
  @override
  List<Object?> get props => [enableStock999IndSellDiff];
}

class ToggleStock999ImpDisplay extends SpotEvent {
  final bool enableStock999ImpSellDiff;

  ToggleStock999ImpDisplay({required this.enableStock999ImpSellDiff});
  @override
  List<Object?> get props => [enableStock999ImpSellDiff];
}

class ToggleStock995IndDisplay extends SpotEvent {
  final bool enableStock995IndSellDiff;

  ToggleStock995IndDisplay({required this.enableStock995IndSellDiff});
  @override
  List<Object?> get props => [enableStock995IndSellDiff];
}

class ToggleStock995ImpDisplay extends SpotEvent {
  final bool enableStock995ImpSellDiff;

  ToggleStock995ImpDisplay({required this.enableStock995ImpSellDiff});
  @override
  List<Object?> get props => [enableStock995ImpSellDiff];
}

class ToggleStock9999IndDisplay extends SpotEvent {
  final bool enableStock9999IndSellDiff;

  ToggleStock9999IndDisplay({required this.enableStock9999IndSellDiff});
  @override
  List<Object?> get props => [enableStock9999IndSellDiff];
}

class ToggleStock9999ImpDisplay extends SpotEvent {
  final bool enableStock9999ImpSellDiff;

  ToggleStock9999ImpDisplay({required this.enableStock9999ImpSellDiff});
  @override
  List<Object?> get props => [enableStock9999ImpSellDiff];
}
//buying price events
class ToggleStock999IndBuyDiffDisplay extends SpotEvent {
  final bool enableStock999IndBuyDiff;

  ToggleStock999IndBuyDiffDisplay({required this.enableStock999IndBuyDiff});
  @override
  List<Object?> get props => [enableStock999IndBuyDiff];
}

class ToggleStock999ImpBuyDiffDisplay extends SpotEvent {
  final bool enableStock999ImpBuyDiff;

  ToggleStock999ImpBuyDiffDisplay({required this.enableStock999ImpBuyDiff});
  @override
  List<Object?> get props => [enableStock999ImpBuyDiff];
}

class ToggleStock995IndBuyDiffDisplay extends SpotEvent {
  final bool enableStock995IndBuyDiff;

  ToggleStock995IndBuyDiffDisplay({required this.enableStock995IndBuyDiff});
  @override
  List<Object?> get props => [enableStock995IndBuyDiff];
}

class ToggleStock995ImpBuyDiffDisplay extends SpotEvent {
  final bool enableStock995ImpBuyDiff;

  ToggleStock995ImpBuyDiffDisplay({required this.enableStock995ImpBuyDiff});
  @override
  List<Object?> get props => [enableStock995ImpBuyDiff];
}

class ToggleStock9999IndBuyDiffDisplay extends SpotEvent {
  final bool enableStock9999IndBuyDiff;

  ToggleStock9999IndBuyDiffDisplay({required this.enableStock9999IndBuyDiff});
  @override
  List<Object?> get props => [enableStock9999IndBuyDiff];
}

class ToggleStock9999ImpBuyDiffDisplay extends SpotEvent {
  final bool enableStock9999ImpBuyDiff;

  ToggleStock9999ImpBuyDiffDisplay({required this.enableStock9999ImpBuyDiff});
  @override
  List<Object?> get props => [enableStock9999ImpBuyDiff];
}

class IncrementStocks999IndBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks999IndBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks999ImpBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks999ImpBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks995IndBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks995IndBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks995ImpBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks995ImpBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks9999IndBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks9999IndBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class IncrementStocks9999ImpBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}

class DecrementStocks9999ImpBuyDiff extends SpotEvent {
  @override
  List<Object?> get props => [];
}
