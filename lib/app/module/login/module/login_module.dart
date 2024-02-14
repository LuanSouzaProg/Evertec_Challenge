import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';
import '../pages/login_page.dart';

class LoginModule extends Module {
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        LoginBloc loginBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: loginBloc),
          ],
          child: const LoginPage(),
        );
      },
    );
  }
}
