part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class ValidateUser extends LoginEvent {
  final UserCredentialModel userCredentialModel;

  const ValidateUser(this.userCredentialModel);
}
