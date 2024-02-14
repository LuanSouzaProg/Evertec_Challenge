import 'package:flutter/material.dart';

class HeaderLoginComponent extends StatelessWidget {
  const HeaderLoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.45,
      width: MediaQuery.sizeOf(context).width,
      child: Image.asset(
        'assets/imgs/login.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
