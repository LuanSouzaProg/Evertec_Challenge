import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/components/alert_dialog_component.dart';

class SocialNetworksComponent extends StatelessWidget {
  const SocialNetworksComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialogComponent(
                    title: 'Iniciar sesión con google',
                    content: 'Esta función no está disponible todavía',
                    textButton: 'Cerrar',
                    onPressed: () {
                      Modular.to.pop();
                    },
                  );
                },
              );
            },
            child: Image.asset(
              'assets/icons/google.png',
              width: 40,
              height: 40,
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialogComponent(
                    title: 'Iniciar sesión con Facebook',
                    content: 'Esta función no está disponible todavía',
                    textButton: 'Cerrar',
                    onPressed: () {
                      Modular.to.pop();
                    },
                  );
                },
              );
            },
            child: Image.asset(
              'assets/icons/facebook.png',
              width: 40,
              height: 40,
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialogComponent(
                    title: 'Iniciar sesión con instagram',
                    content: 'Esta función no está disponible todavía',
                    textButton: 'Cerrar',
                    onPressed: () {
                      Modular.to.pop();
                    },
                  );
                },
              );
            },
            child: Image.asset(
              'assets/icons/instagram.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
