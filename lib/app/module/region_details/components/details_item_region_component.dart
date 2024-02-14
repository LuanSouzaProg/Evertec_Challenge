import 'package:flutter/material.dart';

import '../../../shared/utils/flag_mapper.dart';

class DetailsItemRegionComponent extends StatelessWidget {
  final String state;
  final String name;

  const DetailsItemRegionComponent(
      {super.key, required this.state, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/imgs/flags/Flag_of_${FlagHelper.getFlag(
              state,
            )}'),
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            ' - $state ',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
