import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/user_credential_model.dart';
import '../../../shared/components/alert_dialog_component.dart';
import '../../../shared/components/button_component.dart';
import '../bloc/login_bloc.dart';

class ButtonLoginComponent extends StatefulWidget {
  const ButtonLoginComponent({super.key});

  @override
  State<ButtonLoginComponent> createState() => _ButtonLoginComponentState();
}

class _ButtonLoginComponentState extends State<ButtonLoginComponent> {
  LoginBloc loginBloc = Modular.get();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          setState(() {
            isLoading = false;
          });

          Modular.to.pushReplacementNamed('/home_module');
        }

        if (state is LoginErrorState) {
          setState(() {
            isLoading = false;
          });

          showDialog(
            context: context,
            builder: (context) {
              return AlertDialogComponent(
                title: 'Oops! Ha ocurrido un error.',
                content:
                    'Parece que se ha producido un error, inténtelo de nuevo.',
                textButton: 'Cerrar',
                onPressed: () {
                  Modular.to.pop();
                },
              );
            },
          );
        }

        if (state is LoginLoadingState) {
          setState(() {
            isLoading = true;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40).copyWith(
          top: 30,
          bottom: 20,
        ),
        child: ButtonComponent(
          onPressed: () {
            if (loginBloc.typeController.text.isNotEmpty ||
                loginBloc.numberController.text.isNotEmpty ||
                loginBloc.passwordController.text.isNotEmpty) {
              UserCredentialModel user = UserCredentialModel(
                type: loginBloc.typeController.text,
                number: loginBloc.numberController.text,
                password: loginBloc.passwordController.text,
              );

              loginBloc.add(ValidateUser(user));
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialogComponent(
                    title: 'Oops! Ha ocurrido un error.',
                    content: 'Parece que no completaste todos los campos.',
                    textButton: 'Cerrar',
                    onPressed: () {
                      Modular.to.pop();
                    },
                  );
                },
              );
            }
          },
          widget: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                )
              : Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
        ),
      ),
    );
  }
}
