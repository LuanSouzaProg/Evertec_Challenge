import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/animated_component.dart';
import '../components/details_item_region_component.dart';
import '../components/details_item_component.dart';
import '../../../shared/utils/constraints.dart';
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

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedComponent(
                      delay: 0,
                      child: Image.asset(
                        'assets/imgs/doctor_details.png',
                        height: 200,
                      ),
                    ),
                    AnimatedComponent(
                      delay: 0.5,
                      child: DetailsItemRegionComponent(
                        state: region.state ?? '',
                        name: region.name ?? '',
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedComponent(
                      delay: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsItemComponent(
                            title: formatNumber(region.positive ?? 0),
                            subtitle: 'Positivos',
                          ),
                          DetailsItemComponent(
                            title: formatNumber(region.totalTestResults ?? 0),
                            subtitle: 'Todas las pruebas',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedComponent(
                      delay: 1.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsItemComponent(
                            title: formatNumber(region.death ?? 0),
                            subtitle: 'Muerto',
                          ),
                          DetailsItemComponent(
                            title: formatNumber(
                                region.hospitalizedCumulative ?? 0),
                            subtitle: 'hospitalizados',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedComponent(
                      delay: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsItemComponent(
                            title:
                                formatNumber(region.hospitalizedCurrently ?? 0),
                            subtitle: 'actualmente hospitalizado',
                          ),
                          DetailsItemComponent(
                            title: formatarData(region.lastUpdateEt.toString()),
                            subtitle: 'última actualización',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedComponent(
                      delay: 2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsItemComponent(
                            title: formatNumber(region.positiveTestsViral ?? 0),
                            subtitle: 'Pruebas positivas',
                          ),
                          DetailsItemComponent(
                            title: formatNumber(region.negativeTestsViral ?? 0),
                            subtitle: 'Pruebas negativas',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }

            if (state is RegionDetailsErrorState) {}

            if (state is RegionDetailsLoadingState) {}

            return Container();
          },
        ));
  }
}
