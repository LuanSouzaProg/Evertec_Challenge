import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import '../bloc/login_bloc.dart';
import 'item_form_component.dart';

class FormLoginComponent extends StatefulWidget {
  const FormLoginComponent({super.key});

  @override
  State<FormLoginComponent> createState() => _FormLoginComponentState();
}

class _FormLoginComponentState extends State<FormLoginComponent> {
  LoginBloc loginBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        ItemFormComponent(
          controller: loginBloc.typeController,
          title: 'Tipo Documento:',
          needObscureText: false,
        ),
        const SizedBox(height: 8),
        ItemFormComponent(
          controller: loginBloc.numberController,
          title: 'Número Documento:',
          needObscureText: false,
        ),
        const SizedBox(height: 8),
        ItemFormComponent(
          controller: loginBloc.passwordController,
          title: 'Contraseña',
          needObscureText: true,
        ),
      ],
    );
  }
}
