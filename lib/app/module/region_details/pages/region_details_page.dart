import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/loading_component.dart';
import '../components/details_component.dart';
import '../bloc/region_details_bloc.dart';

class RegionDetailsPage extends StatefulWidget {
  final String state;

  const RegionDetailsPage({super.key, required this.state});

  @override
  State<RegionDetailsPage> createState() => _RegionDetailsPageState();
}

class _RegionDetailsPageState extends State<RegionDetailsPage> {
  RegionDetailsBloc regionDetailsBloc = Modular.get();

  @override
  void initState() {
    regionDetailsBloc.add(GetRegionDetails(widget.state));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: BlocBuilder<RegionDetailsBloc, RegionDetailsState>(
          bloc: regionDetailsBloc,
          builder: (context, state) {
            if (state is RegionDetailsSuccessState) {
              var region = state.detailsRegions;

              return DetailsComponent(
                region: region,
              );
            }

            if (state is RegionDetailsErrorState) {}

            if (state is RegionDetailsLoadingState) {
              return const LoadingComponent();
            }

            return Container();
          },
        ));
  }
}
