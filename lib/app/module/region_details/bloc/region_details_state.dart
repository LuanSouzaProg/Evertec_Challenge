part of 'region_details_bloc.dart';

class RegionDetailsState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class RegionDetailsInitialState extends RegionDetailsState {}

class RegionDetailsLoadingState extends RegionDetailsState {}

class RegionDetailsSuccessState extends RegionDetailsState {
  final DetailsRegionModel detailsRegions;

  RegionDetailsSuccessState({required this.detailsRegions});
}

class RegionDetailsErrorState extends RegionDetailsState {}
