import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/animated_component.dart';
import '../../../shared/components/error_component.dart';
import '../../../shared/components/loading_component.dart';
import '../components/region_card_component.dart';
import '../bloc/more_details_bloc.dart';

class MoreDetailsPage extends StatefulWidget {
  const MoreDetailsPage({super.key});

  @override
  State<MoreDetailsPage> createState() => _MoreDetailsPageState();
}

class _MoreDetailsPageState extends State<MoreDetailsPage> {
  MoreDetailsBloc moreDetailsBloc = Modular.get();
  double delay = 0.0;

  @override
  void initState() {
    moreDetailsBloc.add(const GetMoreDetails());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes por región'),
      ),
      body: BlocBuilder<MoreDetailsBloc, MoreDetailsState>(
        bloc: moreDetailsBloc,
        builder: (context, state) {
          if (state is MoreDetailSuccessState) {
            var list = state.detailsRegions;

            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return AnimatedComponent(
                  delay: delay + 0.2,
                  child: RegionCardComponent(
                    detailsRegionModel: list[index],
                  ),
                );
              },
            );
          }
          if (state is MoreDetailErrorState) {
            return const ErrorComponent();
          }
          if (state is MoreDetailLoadingState) {
            return const LoadingComponent();
          }

          return Container();
        },
      ),
    );
  }
}
