import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorComponent extends StatelessWidget {
  const ErrorComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/error.json', height: 140),
    );
  }
}
