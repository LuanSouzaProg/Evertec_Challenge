import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/more_details_page.dart';
import '../bloc/more_details_bloc.dart';

class MoreDetailsModule extends Module {
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        MoreDetailsBloc moreDetailsBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: moreDetailsBloc),
          ],
          child: const MoreDetailsPage(),
        );
      },
    );
  }
}
