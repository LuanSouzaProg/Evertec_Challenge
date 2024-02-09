part of 'more_details_bloc.dart';

class MoreDetailsState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class MoreDetailInitialState extends MoreDetailsState {}

class MoreDetailLoadingState extends MoreDetailsState {}

class MoreDetailSuccessState extends MoreDetailsState {
  final List<DetailsRegionModel> detailsRegions;

  MoreDetailSuccessState({required this.detailsRegions});
}

class MoreDetailErrorState extends MoreDetailsState {}
