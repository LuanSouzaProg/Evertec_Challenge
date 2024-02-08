import 'package:dio/dio.dart';
import 'package:pay_smart_challenge/app/domain/models/current_covid_model.dart';

import '../../../shared/utils/state.dart';
import 'current_covid_repository.dart';

class CurrentCovidRepositoryImpl implements CurrentCovidRepository {
  final dio = Dio();

  @override
  Future<ViewState> getCurrentCovid() async {
    try {
      final response =
          await dio.get('https://api.covidtracking.com/v1/us/current.json');

      final data = response.data;

      final currentCovid = data
          .map<CurrentCovidModel>((covid) => CurrentCovidModel.fromMap(covid))
          .toList();

      return Success(currentCovid);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
