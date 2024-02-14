import '../../../shared/utils/state.dart';

abstract class RegionDetailsService {
  Future<ViewState> getRegionDetails(String state);
}
