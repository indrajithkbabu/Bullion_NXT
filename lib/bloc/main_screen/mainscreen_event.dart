part of 'mainscreen_bloc.dart';

abstract class MainScreenEvent extends Equatable {}

class SetBottomBarIndexEvent extends MainScreenEvent {
  SetBottomBarIndexEvent({this.index});
  final int? index;
  @override
  List<Object?> get props => [index];
}
