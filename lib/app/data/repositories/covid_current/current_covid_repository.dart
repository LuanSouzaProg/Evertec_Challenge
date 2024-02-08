import '../../../shared/utils/state.dart';

abstract class CurrentCovidRepository {
  Future<ViewState> getCurrentCovid();
}
