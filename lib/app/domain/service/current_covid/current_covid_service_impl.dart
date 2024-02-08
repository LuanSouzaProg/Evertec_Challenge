import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/covid_current/current_covid_repository.dart';
import '../../../shared/utils/state.dart';
import 'current_covid_service.dart';

class CurrentCovidServiceImpl implements CurrentCovidService {
  CurrentCovidRepository repository = Modular.get();

  @override
  Future<ViewState> getCurrentCovid() => repository.getCurrentCovid();
}
