import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class LogoutComponent extends StatelessWidget {
  const LogoutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Modular.to.pushReplacementNamed('/');
      },
      child: const Icon(Icons.logout_rounded),
    );
  }
}
