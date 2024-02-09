import '../../../shared/utils/state.dart';

abstract class MoreDetailsRepository {
  Future<ViewState> getDetailsByRegion();
  Future<ViewState> getInfoByRegion();
}
