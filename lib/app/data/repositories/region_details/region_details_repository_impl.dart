import 'package:dio/dio.dart';

import '../../../domain/models/details_region_model.dart';
import '../../../shared/utils/state.dart';
import 'region_details_repository.dart';

class RegionDetailsRepositoryImpl implements RegionDetailsRepository {
  final Dio dio = Dio();

  @override
  Future<ViewState> getRegionDetails(String state) async {
    try {
      var response = await dio.get(
          'https://api.covidtracking.com/v1/states/${state.toLowerCase()}/info.json');

      var data = response.data;

      var result = DetailsRegionModel.fromMap(data);

      return Success(result);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
