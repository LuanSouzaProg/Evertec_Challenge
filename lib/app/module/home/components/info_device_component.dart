import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/error_component.dart';
import 'card_device_info_component.dart';

class InfoDeviceComponent extends StatelessWidget {
  InfoDeviceComponent({super.key});

  final device = DeviceInfoPlugin();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: device.androidInfo,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const ErrorComponent();
        }

        if (snapshot.hasData) {
          AndroidDeviceInfo info = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CardDeviceInfoComponent(info: info),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
