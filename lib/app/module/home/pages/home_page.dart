import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../components/info_current_covid_component.dart';
import '../components/button_theme_component.dart';
import '../components/info_device_component.dart';
import '../components/header_component.dart';
import '../components/logout_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 2.15,
            child: const InfoCurrentCovidComponent(),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 3.5,
            left: 1,
            right: 1,
            child: InfoDeviceComponent(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 2.25,
            right: 16,
            child: const HeaderComponent(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 1.2,
            right: 40,
            child: Text(
              'COVID-19',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 2.10,
            right: 16,
            child: const ButtonThemeComponent(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 1.1,
            right: 40,
            child: const LogoutComponent(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          Modular.to.pushNamed('/more_details');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
