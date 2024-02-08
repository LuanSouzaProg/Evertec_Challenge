part of 'home_bloc.dart';

class HomeState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final List<CurrentCovidModel> currentCovidModel;

  HomeSuccessState({required this.currentCovidModel});
}

class HomeErrorState extends HomeState {}
