import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'login_event.dart';
import 'login_state.dart';
import '../../graphql/graphql_config.dart';
import '../../graphql/login_mutation.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<SubmitLogin>(_onSubmitLogin);
  }

  Future<void> _onSubmitLogin(SubmitLogin event, Emitter<LoginState> emit) async {
        
    emit(LoginLoading());

    final MutationOptions options = MutationOptions(
      document: gql(loginMutation),
      variables: {
        'usuario': event.usuario,
        'contrasena': event.password,
      },
    );
    
    final result = await graphQLClient.value.mutate(options);
    
    if (result.hasException) {
      emit(LoginFailure("Error al conectar: ${result.exception.toString()}"));
    } else {
      final data = result.data?['login'];
      if (data != null) {
        emit(LoginSuccess(data['id'], data['nombre']));
      } else {
        emit(LoginFailure("Credenciales inválidas"));
      }
    }
  }
}
