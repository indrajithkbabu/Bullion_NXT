part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {}

class MarketFilterTabSelectionEvent extends HomeEvent{
 final int selectedMarketTabIndex;

  MarketFilterTabSelectionEvent({required this.selectedMarketTabIndex});
  @override

  List<Object?> get props => [selectedMarketTabIndex];
  
}