import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/components/alert_dialog_component.dart';

class RegisterComponent extends StatelessWidget {
  const RegisterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialogComponent(
              title: 'Registrar Usuario',
              content: 'Esta función no está disponible todavía',
              textButton: 'Cerrar',
              onPressed: () {
                Modular.to.pop();
              },
            );
          },
        );
      },
      child: const Text(
        'Registrar Usuario',
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
