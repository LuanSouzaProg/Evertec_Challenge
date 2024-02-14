import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../components/splash_loading_component.dart';
import '../components/splash_logo_component.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _progressValue = 0.0;
  String route = '';

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((i) async {
      var _prefs = await SharedPreferences.getInstance();

      if (_prefs.getString('TOKEN') != null) {
        route = '/home_module';
      } else {
        route = '/login_module';
      }
    });

    startProgress();
    super.initState();
  }

  void startProgress() {
    Timer.periodic(const Duration(milliseconds: 1000 ~/ 25), (Timer timer) {
      setState(() {
        if (_progressValue >= 100.0) {
          timer.cancel();
          Modular.to.pushReplacementNamed(route);
        } else {
          _progressValue += 1.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SplashLogoComponent(),
          SplashLoadingComponent(
            progressValue: _progressValue,
          ),
        ],
      ),
    );
  }
}
