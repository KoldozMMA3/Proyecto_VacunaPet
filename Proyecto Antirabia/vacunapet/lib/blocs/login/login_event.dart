abstract class LoginEvent {}

class SubmitLogin extends LoginEvent {
  final String usuario;
  final String password;

  SubmitLogin(this.usuario, this.password);
}
