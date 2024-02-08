import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

import '../../../shared/utils/constraints.dart';
import 'device_item_component.dart';

class CardDeviceInfoComponent extends StatelessWidget {
  final AndroidDeviceInfo info;

  const CardDeviceInfoComponent({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface,
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(
          top: 18,
          bottom: 8,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                StreamBuilder(
                  stream: Stream.periodic(const Duration(seconds: 1)),
                  builder: (context, snapshot) {
                    DateTime date = DateTime.now();

                    return DeviceItemComponent(
                      title: hourFormater(date),
                      subtitle: 'Fecha actual',
                      styleTitle: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      styleSubtitle: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    );
                  },
                ),
                DeviceItemComponent(
                  title: 'Nombre del dispositivo',
                  subtitle: info.board,
                ),
              ],
            ),
            Row(
              children: [
                DeviceItemComponent(
                  title: 'Marca del dispositivo',
                  subtitle: info.brand,
                ),
                DeviceItemComponent(
                  title: 'Tipo de dispositivo',
                  subtitle: info.type,
                ),
              ],
            ),
            Row(
              children: [
                DeviceItemComponent(
                  title: 'Modelo del dispositivo',
                  subtitle: info.model,
                ),
                DeviceItemComponent(
                  title: 'Sistema operativo',
                  subtitle: info.hardware,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
