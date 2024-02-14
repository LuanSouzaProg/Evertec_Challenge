import 'package:flutter/material.dart';

import '../../../shared/components/animated_component.dart';
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
            AnimatedComponent(
              delay: 0,
              child: HeaderLoginComponent(),
            ),
            AnimatedComponent(
              delay: 0.5,
              child: FormLoginComponent(),
            ),
            AnimatedComponent(
              delay: 1,
              child: ButtonLoginComponent(),
            ),
            AnimatedComponent(
              delay: 1.5,
              child: RegisterComponent(),
            ),
            AnimatedComponent(
              delay: 2,
              child: SocialNetworksComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
