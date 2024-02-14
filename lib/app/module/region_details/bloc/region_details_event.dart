part of 'region_details_bloc.dart';

class RegionDetailsEvent extends Equatable {
  const RegionDetailsEvent();

  @override
  List<Object?> get props => [];
}

class GetRegionDetails extends RegionDetailsEvent {
  final String state;

  const GetRegionDetails(this.state);
}
