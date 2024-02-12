import 'package:flutter/material.dart';

import '../../../shared/components/animated_component.dart';
import '../../../domain/models/details_region_model.dart';
import '../../../shared/utils/constraints.dart';
import 'details_item_region_component.dart';
import 'details_item_component.dart';

class DetailsComponent extends StatelessWidget {
  final DetailsRegionModel region;

  const DetailsComponent({super.key, required this.region});

  @override
  Widget build(BuildContext context) {
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
                  title: formatNumber(region.hospitalizedCumulative ?? 0),
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
                  title: formatNumber(region.hospitalizedCurrently ?? 0),
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
}
