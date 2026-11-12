import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet/featuser/auth/view_model/cubit/login_state.dart';
import 'package:pet/featuser/auth/view_model/services/login.dart';

class LoginCubit extends Cubit<LoginStete> {
  LoginCubit() : super(LoginInitial());
  Future<void> logIn({required String userName,required String password}) async {
    emit(LoginLoading());
    try {
      await Login.login(username: userName, password: password);
    } catch (e) {
      emit(LoginError());
    }

    emit(LoginInitial());
  }
}
