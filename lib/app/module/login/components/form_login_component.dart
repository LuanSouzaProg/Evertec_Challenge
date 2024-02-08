import 'package:flutter/material.dart';

import 'item_form_component.dart';

class FormLoginComponent extends StatelessWidget {
  FormLoginComponent({super.key});
  final TextEditingController typeController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        ItemFormComponent(
          controller: typeController,
          title: 'Tipo Documento:',
          needObscureText: false,
        ),
        const SizedBox(height: 8),
        ItemFormComponent(
          controller: numberController,
          title: 'Número Documento:',
          needObscureText: false,
        ),
        const SizedBox(height: 8),
        ItemFormComponent(
          controller: passwordController,
          title: 'Contraseña',
          needObscureText: true,
        ),
      ],
    );
  }
}
