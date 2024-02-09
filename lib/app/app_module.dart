import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/covid_current/current_covid_repository_impl.dart';
import 'data/repositories/covid_current/current_covid_repository.dart';
import 'domain/service/current_covid/current_covid_service_impl.dart';
import 'domain/service/current_covid/current_covid_service.dart';
import 'data/repositories/login/login_repository_impl.dart';
import 'data/repositories/login/login_repository.dart';
import 'domain/service/login/login_service_impl.dart';
import 'domain/service/login/login_service.dart';
import 'module/login/module/login_module.dart';
import 'module/home/module/home_module.dart';
import 'module/login/bloc/login_bloc.dart';
import 'module/home/bloc/home_bloc.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<CurrentCovidRepository>(CurrentCovidRepositoryImpl.new);
    i.add<CurrentCovidService>(CurrentCovidServiceImpl.new);
    i.add<LoginRepository>(LoginRepositoryImpl.new);
    i.add<LoginService>(LoginServiceImpl.new);
    i.addSingleton(LoginBloc.new);
    i.addSingleton(HomeBloc.new);
  }

  @override
  void routes(r) {
    r.module(
      '/',
      module: LoginModule(),
    );
    r.module(
      '/home_module',
      module: HomeModule(),
    );
  }
}
