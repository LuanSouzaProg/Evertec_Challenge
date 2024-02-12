import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/service/more_details/more_details_service.dart';
import '../../../domain/service/region_details/region_details_service.dart';
import '../../../domain/models/details_region_model.dart';
import '../../../shared/utils/state.dart';

part 'region_details_event.dart';
part 'region_details_state.dart';

class RegionDetailsBloc extends Bloc<RegionDetailsEvent, RegionDetailsState> {
  MoreDetailsService moreDetailsService = Modular.get();
  RegionDetailsService regionDetailsService = Modular.get();

  RegionDetailsBloc() : super(RegionDetailsInitialState()) {
    on<GetRegionDetails>((event, emit) async {
      emit(RegionDetailsLoadingState());
      await getRegionDetails(event, emit);
    });
  }

  Future getRegionDetails(event, emit) async {
    var infoState = await regionDetailsService.getRegionDetails(event.state);
    var moreInfo = await moreDetailsService.getDetailsByRegion();

    DetailsRegionModel detailsRegionModel = DetailsRegionModel();

    if (infoState is Success && moreInfo is Success) {
      DetailsRegionModel infoData = infoState.data;
      List<DetailsRegionModel> moreInfoData = moreInfo.data;

      for (var moreDetails in moreInfoData) {
        if (moreDetails.state!.contains(infoData.state!)) {
          detailsRegionModel = DetailsRegionModel(
            state: infoData.state,
            name: infoData.name,
            positive: moreDetails.positive,
            lastUpdateEt: moreDetails.lastUpdateEt,
            death: moreDetails.death,
            hospitalizedCumulative: moreDetails.hospitalizedCumulative,
            hospitalizedCurrently: moreDetails.hospitalizedCurrently,
            positiveTestsViral: moreDetails.positiveTestsViral,
            negativeTestsViral: moreDetails.negativeTestsViral,
            totalTestResults: moreDetails.totalTestResults,
            totalTestsViral: moreDetails.totalTestsViral,
          );
        }
      }

      emit(RegionDetailsSuccessState(detailsRegions: detailsRegionModel));
    } else if (infoState is Failure && moreInfo is Failure) {
      emit(RegionDetailsErrorState());
    }
  }
}
