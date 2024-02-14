import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/region_details/region_details_repository_impl.dart';
import 'data/repositories/covid_current/current_covid_repository_impl.dart';
import 'data/repositories/more_details/more_details_repository_impl.dart';
import 'data/repositories/region_details/region_details_repository.dart';
import 'domain/service/region_details/region_details_service_impl.dart';
import 'data/repositories/covid_current/current_covid_repository.dart';
import 'domain/service/current_covid/current_covid_service_impl.dart';
import 'data/repositories/more_details/more_details_repository.dart';
import 'domain/service/more_details/more_details_service_impl.dart';
import 'domain/service/region_details/region_details_service.dart';
import 'domain/service/current_covid/current_covid_service.dart';
import 'module/region_details/module/region_details_module.dart';
import 'domain/service/more_details/more_details_service.dart';
import 'module/region_details/bloc/region_details_bloc.dart';
import 'module/more_details/module/more_details_module.dart';
import 'data/repositories/login/login_repository_impl.dart';
import 'module/more_details/bloc/more_details_bloc.dart';
import 'data/repositories/login/login_repository.dart';
import 'domain/service/login/login_service_impl.dart';
import 'domain/service/login/login_service.dart';
import 'module/splash/module/splash_module.dart';
import 'module/login/module/login_module.dart';
import 'module/home/module/home_module.dart';
import 'module/login/bloc/login_bloc.dart';
import 'module/home/bloc/home_bloc.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<RegionDetailsRepository>(RegionDetailsRepositoryImpl.new);
    i.add<RegionDetailsService>(RegionDetailsServiceImpl.new);
    i.add<CurrentCovidRepository>(CurrentCovidRepositoryImpl.new);
    i.add<CurrentCovidService>(CurrentCovidServiceImpl.new);
    i.add<MoreDetailsRepository>(MoreDetailsRepositoryImpl.new);
    i.add<MoreDetailsService>(MoreDetailsServiceImpl.new);
    i.add<LoginRepository>(LoginRepositoryImpl.new);
    i.add<LoginService>(LoginServiceImpl.new);
    i.addSingleton(RegionDetailsBloc.new);
    i.addSingleton(MoreDetailsBloc.new);
    i.addSingleton(LoginBloc.new);
    i.addSingleton(HomeBloc.new);
  }

  @override
  void routes(r) {
    r.module(
      '/',
      module: SplashModule(),
    );
    r.module(
      '/login_module',
      module: LoginModule(),
    );
    r.module(
      '/home_module',
      module: HomeModule(),
    );
    r.module(
      '/more_details_module',
      module: MoreDetailsModule(),
    );
    r.module(
      '/region_details_module',
      module: RegionDetailsModule(),
    );
  }
}
