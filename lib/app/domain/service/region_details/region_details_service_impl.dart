import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/region_details/region_details_repository.dart';
import '../../../shared/utils/state.dart';
import 'region_details_service.dart';

class RegionDetailsServiceImpl implements RegionDetailsService {
  RegionDetailsRepository regionDetailsRepository = Modular.get();

  @override
  Future<ViewState> getRegionDetails(String state) =>
      regionDetailsRepository.getRegionDetails(state);
}
