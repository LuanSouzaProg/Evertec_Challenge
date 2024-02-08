import 'package:flutter_modular/flutter_modular.dart';

import '../pages/login_page.dart';

class LoginModule extends Module {
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const LoginPage(),
      // child: (context) {
      //   HomeBloc homeBloc = Modular.get();

      //   return MultiBlocProvider(
      //     providers: [
      //       BlocProvider.value(value: homeBloc),
      //     ],
      //     child: const HomePage(),
      //   );
      // },
    );
  }
}
