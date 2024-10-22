part of 'metal_bloc.dart';

abstract class MetalEvent extends Equatable {}

class Toggle100gSwitch extends MetalEvent {
  final bool is100gEnabled;

  Toggle100gSwitch({required this.is100gEnabled});
  @override
  List<Object> get props => [is100gEnabled];
}

class Toggle200gSwitch extends MetalEvent {
  final bool is200gEnabled;

  Toggle200gSwitch({required this.is200gEnabled});
  @override
  List<Object> get props => [is200gEnabled];
}

class Toggle500gSwitch extends MetalEvent {
  final bool is500gEnabled;

  Toggle500gSwitch({required this.is500gEnabled});
  @override
  List<Object> get props => [is500gEnabled];
}

class Toggle1kgSwitch extends MetalEvent {
  final bool is1kgEnabled;

  Toggle1kgSwitch({required this.is1kgEnabled});
  @override
  List<Object> get props => [is1kgEnabled];
}

class Toggle2kgSwitch extends MetalEvent {
  final bool is2kgEnabled;

  Toggle2kgSwitch({required this.is2kgEnabled});
  @override
  List<Object> get props => [is2kgEnabled];
}

class Toggle5kgSwitch extends MetalEvent {
  final bool is5kgEnabled;

  Toggle5kgSwitch({required this.is5kgEnabled});
  @override
  List<Object> get props => [is5kgEnabled];
}

class Toggle10kgSwitch extends MetalEvent {
  final bool is10kgEnabled;

  Toggle10kgSwitch({required this.is10kgEnabled});
  @override
  List<Object> get props => [is10kgEnabled];
}

class SelectTimePeriod100g extends MetalEvent {
  final String timePeriod100g;

  SelectTimePeriod100g({required this.timePeriod100g});
  @override
  List<Object> get props => [timePeriod100g];
}

class SelectTimePeriod200g extends MetalEvent {
  final String timePeriod200g;

  SelectTimePeriod200g({required this.timePeriod200g});
  @override
  List<Object> get props => [timePeriod200g];
}

class SelectTimePeriod500g extends MetalEvent {
  final String timePeriod500g;

  SelectTimePeriod500g({required this.timePeriod500g});
  @override
  List<Object> get props => [timePeriod500g];
}

class SelectTimePeriod1kg extends MetalEvent {
  final String timePeriod1kg;

  SelectTimePeriod1kg({required this.timePeriod1kg});
  @override
  List<Object> get props => [timePeriod1kg];
}

class SelectTimePeriod2kg extends MetalEvent {
  final String timePeriod2kg;

  SelectTimePeriod2kg({required this.timePeriod2kg});
  @override
  List<Object> get props => [timePeriod2kg];
}

class SelectTimePeriod5kg extends MetalEvent {
  final String timePeriod5kg;

  SelectTimePeriod5kg({required this.timePeriod5kg});
  @override
  List<Object> get props => [timePeriod5kg];
}

class SelectTimePeriod10kg extends MetalEvent {
  final String timePeriod10kg;

  SelectTimePeriod10kg({required this.timePeriod10kg});
  @override
  List<Object> get props => [timePeriod10kg];
}

class SetBuyDiff100g extends MetalEvent {
  final String buyDiff100g;

  SetBuyDiff100g({required this.buyDiff100g});
  @override
  List<Object> get props => [buyDiff100g];
}

class SetBuyDiff200g extends MetalEvent {
  final String buyDiff200g;

  SetBuyDiff200g({required this.buyDiff200g});
  @override
  List<Object> get props => [buyDiff200g];
}

class SetBuyDiff500g extends MetalEvent {
  final String buyDiff500g;

  SetBuyDiff500g({required this.buyDiff500g});
  @override
  List<Object> get props => [buyDiff500g];
}

class SetBuyDiff1kg extends MetalEvent {
  final String buyDiff1kg;

  SetBuyDiff1kg({required this.buyDiff1kg});
  @override
  List<Object> get props => [buyDiff1kg];
}

class SetBuyDiff2kg extends MetalEvent {
  final String buyDiff2kg;

  SetBuyDiff2kg({required this.buyDiff2kg});
  @override
  List<Object> get props => [buyDiff2kg];
}

class SetBuyDiff5kg extends MetalEvent {
  final String buyDiff5kg;

  SetBuyDiff5kg({required this.buyDiff5kg});
  @override
  List<Object> get props => [buyDiff5kg];
}

class SetBuyDiff10kg extends MetalEvent {
  final String buyDiff10kg;

  SetBuyDiff10kg({required this.buyDiff10kg});
  @override
  List<Object> get props => [buyDiff10kg];
}

class SetSellDiff100g extends MetalEvent {
  final String sellDiff100g;

  SetSellDiff100g({required this.sellDiff100g});
  @override
  List<Object> get props => [sellDiff100g];
}

class SetSellDiff200g extends MetalEvent {
  final String sellDiff200g;

  SetSellDiff200g({required this.sellDiff200g});
  @override
  List<Object> get props => [sellDiff200g];
}

class SetSellDiff500g extends MetalEvent {
  final String sellDiff500g;

  SetSellDiff500g({required this.sellDiff500g});
  @override
  List<Object> get props => [sellDiff500g];
}

class SetSellDiff1kg extends MetalEvent {
  final String sellDiff1kg;

  SetSellDiff1kg({required this.sellDiff1kg});
  @override
  List<Object> get props => [sellDiff1kg];
}

class SetSellDiff2kg extends MetalEvent {
  final String sellDiff2kg;

  SetSellDiff2kg({required this.sellDiff2kg});
  @override
  List<Object> get props => [sellDiff2kg];
}

class SetSellDiff5kg extends MetalEvent {
  final String sellDiff5kg;

  SetSellDiff5kg({required this.sellDiff5kg});
  @override
  List<Object> get props => [sellDiff5kg];
}

class SetSellDiff10kg extends MetalEvent {
  final String sellDiff10kg;

  SetSellDiff10kg({required this.sellDiff10kg});
  @override
  List<Object> get props => [sellDiff10kg];
}

