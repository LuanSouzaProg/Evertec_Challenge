import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/service/more_details/more_details_service.dart';
import '../../../domain/models/details_region_model.dart';
import '../../../shared/utils/state.dart';

part 'more_details_event.dart';
part 'more_details_state.dart';

class MoreDetailsBloc extends Bloc<MoreDetailsEvent, MoreDetailsState> {
  MoreDetailsService service = Modular.get();

  MoreDetailsBloc() : super(MoreDetailInitialState()) {
    on<GetMoreDetails>((event, emit) async {
      emit(MoreDetailLoadingState());
      await getMoreDetails(event, emit);
    });
  }

  Future getMoreDetails(event, emit) async {
    var detailsByRegion = await service.getDetailsByRegion();
    var infoByRegion = await service.getInfoByRegion();

    if (detailsByRegion is Success && infoByRegion is Success) {
      List<DetailsRegionModel> detailsRegion = detailsByRegion.data;
      List<DetailsRegionModel> infoRegion = infoByRegion.data;
      List<DetailsRegionModel> finalList = [];

      for (final details in detailsRegion) {
        for (final info in infoRegion) {
          if (info.state!.contains(details.state!)) {
            finalList.add(
              DetailsRegionModel(
                name: info.name,
                state: details.state,
                positive: details.positive,
                lastUpdateEt: details.lastUpdateEt,
              ),
            );
          }
        }
      }

      emit(MoreDetailSuccessState(detailsRegions: finalList));
    } else if (detailsByRegion is Failure || infoByRegion is Failure) {
      emit(MoreDetailErrorState());
    }
  }
}
