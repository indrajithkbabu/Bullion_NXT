part of 'watch_list_bloc.dart';

abstract class WatchListEvent extends Equatable {

}
class AddToWatchlistEvent extends WatchListEvent{
  final WholeSaleGoldDealers dealer;

  AddToWatchlistEvent({required this.dealer});
  @override
 
  List<Object?> get props => [dealer];

}
