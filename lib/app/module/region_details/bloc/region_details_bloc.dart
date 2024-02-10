import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pay_smart_challenge/app/shared/utils/state.dart';

import '../../../domain/service/region_details/region_details_service.dart';
import '../../../domain/models/details_region_model.dart';

part 'region_details_event.dart';
part 'region_details_state.dart';

class RegionDetailsBloc extends Bloc<RegionDetailsEvent, RegionDetailsState> {
  RegionDetailsService service = Modular.get();

  RegionDetailsBloc() : super(RegionDetailsInitialState()) {
    on<GetRegionDetails>((event, emit) async {
      emit(RegionDetailsLoadingState());
      await getRegionDetails(event, emit);
    });
  }

  Future getRegionDetails(event, emit) async {
    var infoState = await service.getRegionDetails(event.state);
    var moreInfo = await service.getMoreRegionDetails();

    DetailsRegionModel detailsRegionModel = DetailsRegionModel();

    if (infoState is Success && moreInfo is Success) {
      emit(RegionDetailsSuccessState(detailsRegions: detailsRegionModel));
    } else if (infoState is Failure && moreInfo is Failure) {
      emit(RegionDetailsErrorState());
    }
  }
}
