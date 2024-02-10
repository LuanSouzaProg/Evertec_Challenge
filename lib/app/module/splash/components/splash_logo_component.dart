import 'package:flutter/material.dart';

class SplashLogoComponent extends StatelessWidget {
  const SplashLogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 160,
              width: 160,
              child: Image.asset(
                'assets/imgs/coronavirus_splash.png',
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Text(
              'COVID-19',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'CORONAVIRUS 2019 - nCoV',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
