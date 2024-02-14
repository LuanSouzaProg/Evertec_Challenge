import 'package:flutter/material.dart';

class SplashLoadingComponent extends StatelessWidget {
  final double progressValue;

  const SplashLoadingComponent({super.key, required this.progressValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Loading...',
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: LinearProgressIndicator(
            value: progressValue / 100,
            minHeight: 20.0,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '${progressValue.toInt()}%',
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
