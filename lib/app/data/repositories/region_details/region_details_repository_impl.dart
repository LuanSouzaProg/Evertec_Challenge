import 'package:dio/dio.dart';
import 'package:pay_smart_challenge/app/shared/utils/state.dart';

import '../../../domain/models/details_region_model.dart';
import 'region_details_repository.dart';

class RegionDetailsRepositoryImpl implements RegionDetailsRepository {
  final Dio dio = Dio();

  @override
  Future<ViewState> getRegionDetails(String state) async {
    try {
      var response = await dio.get(
          'https://api.covidtracking.com/v1/states/${state.toLowerCase()}/info.json');

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
  Future<ViewState> getMoreRegionDetails() async {
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
}
