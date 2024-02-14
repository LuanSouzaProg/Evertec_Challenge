import '../../../shared/utils/state.dart';

abstract class RegionDetailsRepository {
  Future<ViewState> getRegionDetails(String state);
}
