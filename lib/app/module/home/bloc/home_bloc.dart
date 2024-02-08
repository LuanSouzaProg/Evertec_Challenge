import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/service/current_covid/current_covid_service.dart';
import '../../../domain/models/current_covid_model.dart';
import '../../../shared/utils/state.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  CurrentCovidService covidService = Modular.get();

  HomeBloc() : super(HomeInitialState()) {
    on<GetCurrentCovid>(
      (event, emit) async {
        emit(HomeLoadingState());
        await getCurrentCovid(event, emit);
      },
    );
  }

  Future getCurrentCovid(event, emit) async {
    var response = await covidService.getCurrentCovid();

    if (response is Success) {
      emit(HomeSuccessState(currentCovidModel: response.data));
    } else if (response is Failure) {
      emit(HomeErrorState());
    }
  }
}
