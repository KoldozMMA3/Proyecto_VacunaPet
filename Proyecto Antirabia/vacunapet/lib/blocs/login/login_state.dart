abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String userId;
  final String nombre;

  LoginSuccess(this.userId, this.nombre);
}

class LoginFailure extends LoginState {
  final String message;

  LoginFailure(this.message);
}
