part of 'home_bloc.dart';

class HomeState extends Equatable {
   const HomeState({this.selectedIndex});
  final int? selectedIndex;

  @override
  List<Object?> get props => [selectedIndex];
  
  HomeState copyWith({int? selectedIndex}) {
    return HomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
