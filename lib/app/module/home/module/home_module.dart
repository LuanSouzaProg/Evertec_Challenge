import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pay_smart_challenge/app/module/home/bloc/home_bloc.dart';

import '../pages/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        HomeBloc homeBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: homeBloc),
          ],
          child: const HomePage(),
        );
      },
    );
  }
}
