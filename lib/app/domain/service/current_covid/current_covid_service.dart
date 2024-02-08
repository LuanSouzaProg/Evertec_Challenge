import '../../../shared/utils/state.dart';

abstract class CurrentCovidService {
  Future<ViewState> getCurrentCovid();
}
