import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/covid_current/current_covid_repository_impl.dart';
import 'data/repositories/covid_current/current_covid_repository.dart';
import 'domain/service/current_covid/current_covid_service_impl.dart';
import 'domain/service/current_covid/current_covid_service.dart';
import 'module/home/module/home_module.dart';
import 'module/home/bloc/home_bloc.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<CurrentCovidRepository>(CurrentCovidRepositoryImpl.new);
    i.add<CurrentCovidService>(CurrentCovidServiceImpl.new);
    i.addSingleton(HomeBloc.new);
  }

  @override
  void routes(r) {
    r.module(
      '/',
      module: HomeModule(),
    );
  }
}
