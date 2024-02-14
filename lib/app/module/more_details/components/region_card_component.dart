import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/models/details_region_model.dart';
import '../../../shared/utils/constraints.dart';
import '../../../shared/utils/flag_mapper.dart';

class RegionCardComponent extends StatelessWidget {
  final DetailsRegionModel detailsRegionModel;

  const RegionCardComponent({super.key, required this.detailsRegionModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Modular.to.pushNamed(
          '/region_details_module',
          arguments: detailsRegionModel.state,
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 18).copyWith(bottom: 12),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border.all(),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/imgs/flags/Flag_of_${FlagHelper.getFlag(
                        detailsRegionModel.state ?? '',
                      )}'),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          detailsRegionModel.name ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          formatNumber(detailsRegionModel.positive ?? 0),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          formatarData(detailsRegionModel.lastUpdateEt ?? ''),
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
