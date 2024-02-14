import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/error_component.dart';
import 'card_device_info_component.dart';

class InfoDeviceComponent extends StatelessWidget {
  InfoDeviceComponent({super.key});

  final device = DeviceInfoPlugin();

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
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
                  CardDeviceInfoComponent(
                    androidDeviceInfo: info,
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return FutureBuilder(
        future: device.iosInfo,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const ErrorComponent();
          }

          if (snapshot.hasData) {
            IosDeviceInfo info = snapshot.data!;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CardDeviceInfoComponent(iosDeviceInfo: info),
                ],
              ),
            );
          }
          return Container();
        },
      );
    }

    return Container();
  }
}
