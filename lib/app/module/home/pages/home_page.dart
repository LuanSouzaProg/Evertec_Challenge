import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import '../components/info_current_covid_component.dart';
import '../components/info_device_component.dart';
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
      appBar: AppBar(
        title: Text(
          'COVID-19',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: LogoutComponent(),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                const SizedBox(height: 10),
                InfoDeviceComponent(),
                const SizedBox(height: 20),
                const Expanded(
                  child: InfoCurrentCovidComponent(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          Modular.to.pushNamed('/more_details_module');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
