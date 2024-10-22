// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'watch_list_bloc.dart';

class WatchListState extends Equatable {
  const WatchListState({this.wholeSaleGoldDealerList = const []});
  final List<WholeSaleGoldDealers> wholeSaleGoldDealerList;
  @override
  List<Object> get props => [wholeSaleGoldDealerList];

  WatchListState copyWith({
    List<WholeSaleGoldDealers>? wholeSaleGoldDealerList,
  }) {
    return WatchListState(
      wholeSaleGoldDealerList:
          wholeSaleGoldDealerList ?? this.wholeSaleGoldDealerList,
    );
  }
}
