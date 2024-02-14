import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class LogoutComponent extends StatelessWidget {
  const LogoutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var _prefs = await SharedPreferences.getInstance();
        _prefs.remove('TOKEN');

        Modular.to.pushReplacementNamed('/login_module');
      },
      child: const Icon(Icons.logout_rounded),
    );
  }
}
