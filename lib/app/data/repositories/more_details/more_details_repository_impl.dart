import 'package:dio/dio.dart';

import '../../../domain/models/details_region_model.dart';
import '../../../shared/utils/state.dart';
import 'more_details_repository.dart';

class MoreDetailsRepositoryImpl implements MoreDetailsRepository {
  final Dio dio = Dio();

  @override
  Future<ViewState> getDetailsByRegion() async {
    try {
      var response =
          await dio.get('https://api.covidtracking.com/v1/states/current.json');

      var data = response.data;

      var result = data
          .map<DetailsRegionModel>(
              (region) => DetailsRegionModel.fromMap(region))
          .toList();

      return Success(result);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  @override
  Future<ViewState> getInfoByRegion() async {
    try {
      var response =
          await dio.get('https://api.covidtracking.com/v1/states/info.json');

      var data = response.data;

      var result = data
          .map<DetailsRegionModel>(
              (region) => DetailsRegionModel.fromMap(region))
          .toList();

      return Success(result);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
