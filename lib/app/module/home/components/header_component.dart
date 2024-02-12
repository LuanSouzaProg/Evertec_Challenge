import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/imgs/doctor_home.png',
      height: 300,
      width: 300,
    );
  }
}
