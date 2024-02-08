import 'package:flutter/material.dart';

class DeviceItemComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final TextStyle? styleTitle;
  final TextStyle? styleSubtitle;

  const DeviceItemComponent({
    super.key,
    required this.title,
    required this.subtitle,
    this.styleTitle,
    this.styleSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.38,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: styleTitle ??
                TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          Text(
            subtitle,
            style: styleSubtitle ??
                TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
