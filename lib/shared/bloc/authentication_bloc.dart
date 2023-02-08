import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) {});
    on<AppStarted>(
      (event, emit) async {
        // try {
        //   await userRepo.getSession();
        // } on DioError catch (e) {
        //   // ignore: use_rethrow_when_possible
        //   throw e;
        // }
        emit(const AuthenticationAuthenticated());
      },
    );
    on<LoggedIn>(
      (event, emit) async {},
    );
    on<LoggedOut>(
      (event, emit) async {},
    );
  }
}
