import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/models/user_credential_model.dart';
import '../../../shared/utils/state.dart';
import 'login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<ViewState> validateUser(
      UserCredentialModel userCredentialModel) async {
    var _prefs = await SharedPreferences.getInstance();

    try {
      var user = await rootBundle.loadString('assets/json/login.json');

      final data = jsonDecode(user);

      final response =
          data.map<UserCredentialModel>((e) => UserCredentialModel.fromMap(e));

      final result = response.any((user) =>
          user.type == userCredentialModel.type &&
          user.number == userCredentialModel.number &&
          user.password == userCredentialModel.password);

      if (result) {
        for (var i = 0; i < data.length; i++) {
          if (userCredentialModel.type == data[i]['type']) {
            _prefs.setString('TOKEN', data[i]['token']);
          }
        }

        return Success(result);
      } else {
        return Failure('Usuario no encontrado.');
      }
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
