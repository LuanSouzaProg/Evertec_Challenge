import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/components/button_component.dart';
import '../components/social_networks_component.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderLoginComponent(),
            FormLoginComponent(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40).copyWith(
                top: 30,
                bottom: 20,
              ),
              child: ButtonComponent(
                onPressed: () {
                  Modular.to.pushNamed('/home_module');
                },
                text: 'Login',
              ),
            ),
            const RegisterComponent(),
            const SocialNetworksComponent(),
          ],
        ),
      ),
    );
  }
}
