// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'metal_bloc.dart';

class MetalState extends Equatable {
  const MetalState({
    this.is100gEnabled = false,
    this.is200gEnabled = false,
    this.is500gEnabled = false,
    this.is1kgEnabled = false,
    this.is2kgEnabled = false,
    this.is5kgEnabled = false,
    this.is10kgEnabled = false,
    this.timePeriod100g = '',
    this.timePeriod200g = '',
    this.timePeriod500g = '',
    this.timePeriod1kg = '',
    this.timePeriod2kg = '',
    this.timePeriod5kg = '',
    this.timePeriod10kg = '',
    this.buyDiff100g = '',
    this.buyDiff200g = '',
    this.buyDiff500g = '',
    this.buyDiff1kg = '',
    this.buyDiff2kg = '',
    this.buyDiff5kg = '',
    this.buyDiff10kg = '',
    this.sellDiff100g = '',
    this.sellDiff200g = '',
    this.sellDiff500g = '',
    this.sellDiff1kg = '',
    this.sellDiff2kg = '',
    this.sellDiff5kg = '',
    this.sellDiff10kg = '',
   
  });
  //metals
  final bool is100gEnabled;
  final bool is200gEnabled;
  final bool is500gEnabled;
  final bool is1kgEnabled;
  final bool is2kgEnabled;
  final bool is5kgEnabled;
  final bool is10kgEnabled;
  final String timePeriod100g;
  final String timePeriod200g;
  final String timePeriod500g;
  final String timePeriod1kg;
  final String timePeriod2kg;
  final String timePeriod5kg;
  final String timePeriod10kg;
  final String buyDiff100g;
  final String buyDiff200g;
  final String buyDiff500g;
  final String buyDiff1kg;
  final String buyDiff2kg;
  final String buyDiff5kg;
  final String buyDiff10kg;
  final String sellDiff100g;
  final String sellDiff200g;
  final String sellDiff500g;
  final String sellDiff1kg;
  final String sellDiff2kg;
  final String sellDiff5kg;
  final String sellDiff10kg;

  @override
  List<Object> get props => [
        is100gEnabled,
        is200gEnabled,
        is500gEnabled,
        is1kgEnabled,
        is2kgEnabled,
        is5kgEnabled,
        is10kgEnabled,
        timePeriod100g,
        timePeriod200g,
        timePeriod500g,
        timePeriod1kg,
        timePeriod2kg,
        timePeriod5kg,
        timePeriod10kg,
        buyDiff100g,
        buyDiff200g,
        buyDiff500g,
        buyDiff1kg,
        buyDiff2kg,
        buyDiff5kg,
        buyDiff10kg,
        sellDiff100g,
        sellDiff200g,
        sellDiff500g,
        sellDiff1kg,
        sellDiff2kg,
        sellDiff5kg,
        sellDiff10kg,
   
      ];

  MetalState copyWith({
    bool? is100gEnabled,
    bool? is200gEnabled,
    bool? is500gEnabled,
    bool? is1kgEnabled,
    bool? is2kgEnabled,
    bool? is5kgEnabled,
    bool? is10kgEnabled,
    String? timePeriod100g,
    String? timePeriod200g,
    String? timePeriod500g,
    String? timePeriod1kg,
    String? timePeriod2kg,
    String? timePeriod5kg,
    String? timePeriod10kg,
    String? buyDiff100g,
    String? buyDiff200g,
    String? buyDiff500g,
    String? buyDiff1kg,
    String? buyDiff2kg,
    String? buyDiff5kg,
    String? buyDiff10kg,
    String? sellDiff100g,
    String? sellDiff200g,
    String? sellDiff500g,
    String? sellDiff1kg,
    String? sellDiff2kg,
    String? sellDiff5kg,
    String? sellDiff10kg,
    int? gold999IndCustomTaxTypeRadioValue,
    int? gold999ImpCustomTaxTypeRadioValue,
  }) {
    return MetalState(
      is100gEnabled: is100gEnabled ?? this.is100gEnabled,
      is200gEnabled: is200gEnabled ?? this.is200gEnabled,
      is500gEnabled: is500gEnabled ?? this.is500gEnabled,
      is1kgEnabled: is1kgEnabled ?? this.is1kgEnabled,
      is2kgEnabled: is2kgEnabled ?? this.is2kgEnabled,
      is5kgEnabled: is5kgEnabled ?? this.is5kgEnabled,
      is10kgEnabled: is10kgEnabled ?? this.is10kgEnabled,
      timePeriod100g: timePeriod100g ?? this.timePeriod100g,
      timePeriod200g: timePeriod200g ?? this.timePeriod200g,
      timePeriod500g: timePeriod500g ?? this.timePeriod500g,
      timePeriod1kg: timePeriod1kg ?? this.timePeriod1kg,
      timePeriod2kg: timePeriod2kg ?? this.timePeriod2kg,
      timePeriod5kg: timePeriod5kg ?? this.timePeriod5kg,
      timePeriod10kg: timePeriod10kg ?? this.timePeriod10kg,
      buyDiff100g: buyDiff100g ?? this.buyDiff100g,
      buyDiff200g: buyDiff200g ?? this.buyDiff200g,
      buyDiff500g: buyDiff500g ?? this.buyDiff500g,
      buyDiff1kg: buyDiff1kg ?? this.buyDiff1kg,
      buyDiff2kg: buyDiff2kg ?? this.buyDiff2kg,
      buyDiff5kg: buyDiff5kg ?? this.buyDiff5kg,
      buyDiff10kg: buyDiff10kg ?? this.buyDiff10kg,
      sellDiff100g: sellDiff100g ?? this.sellDiff100g,
      sellDiff200g: sellDiff200g ?? this.sellDiff200g,
      sellDiff500g: sellDiff500g ?? this.sellDiff500g,
      sellDiff1kg: sellDiff1kg ?? this.sellDiff1kg,
      sellDiff2kg: sellDiff2kg ?? this.sellDiff2kg,
      sellDiff5kg: sellDiff5kg ?? this.sellDiff5kg,
      sellDiff10kg: sellDiff10kg ?? this.sellDiff10kg,
   
    );
  }
}
