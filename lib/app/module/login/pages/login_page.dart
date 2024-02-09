import 'package:flutter/material.dart';

import '../components/social_networks_component.dart';
import '../components/button_login_component.dart';
import '../components/header_login_component.dart';
import '../components/form_login_component.dart';
import '../components/register_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderLoginComponent(),
            FormLoginComponent(),
            ButtonLoginComponent(),
            RegisterComponent(),
            SocialNetworksComponent(),
          ],
        ),
      ),
    );
  }
}
