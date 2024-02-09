import '../../../shared/utils/state.dart';

abstract class MoreDetailsService {
  Future<ViewState> getDetailsByRegion();
  Future<ViewState> getInfoByRegion();
}
