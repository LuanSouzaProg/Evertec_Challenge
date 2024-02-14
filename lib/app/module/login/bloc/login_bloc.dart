import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/models/user_credential_model.dart';
import '../../../domain/service/login/login_service.dart';
import '../../../shared/utils/state.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  LoginService loginService = Modular.get();

  LoginBloc() : super(LoginInitialState()) {
    on<ValidateUser>((event, emit) async {
      emit(LoginLoadingState());
      await validateUser(event, emit);
    });
  }

  Future validateUser(event, emit) async {
    var response = await loginService.validateUser(event.userCredentialModel);

    if (response is Success) {
      emit(LoginSuccessState());
    } else if (response is Failure) {
      emit(LoginErrorState());
    }
  }
}
