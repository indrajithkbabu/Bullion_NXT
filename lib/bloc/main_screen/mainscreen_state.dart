// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'mainscreen_bloc.dart';

class MainScreenState extends Equatable {
  const MainScreenState({this.selectedIndex = 0});
  final int selectedIndex;
  @override
  List<Object> get props => [selectedIndex];

  MainScreenState copyWith({
    int? selectedIndex,
  }) {
    return MainScreenState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
