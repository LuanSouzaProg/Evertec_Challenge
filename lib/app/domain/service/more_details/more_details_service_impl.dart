import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/more_details/more_details_repository.dart';
import '../../../shared/utils/state.dart';
import 'more_details_service.dart';

class MoreDetailsServiceImpl implements MoreDetailsService {
  MoreDetailsRepository repository = Modular.get();

  @override
  Future<ViewState> getDetailsByRegion() => repository.getDetailsByRegion();

  @override
  Future<ViewState> getInfoByRegion() => repository.getInfoByRegion();
}
