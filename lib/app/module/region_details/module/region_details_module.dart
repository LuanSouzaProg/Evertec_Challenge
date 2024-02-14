import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/region_details_page.dart';
import '../bloc/region_details_bloc.dart';

class RegionDetailsModule extends Module {
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        RegionDetailsBloc regionDetailsBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: regionDetailsBloc),
          ],
          child: RegionDetailsPage(
            state: r.args.data,
          ),
        );
      },
    );
  }
}
