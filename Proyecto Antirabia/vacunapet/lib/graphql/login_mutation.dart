const String loginMutation = r'''
mutation Login($usuario: String!, $contrasena: String!) {
  login(usuario: $usuario, contrasena: $contrasena) {
    id
    nombre
  }
}
''';
