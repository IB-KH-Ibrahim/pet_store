import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet/featuser/auth/view_model/cubit/password_visibility_state.dart';

class PasswordVisibilityCubit extends Cubit<PasswordVisibilityState> {
  PasswordVisibilityCubit()
    : super(
        PasswordVisibilityState(
          statePassword: true,
          stateConfigrationPassword: true,
        ),
      );
  void changeVisibilityPassword() {
    emit(state.copyWith(statePassword: !state.statePassword));
  }

  void changeVisibilityConfigrationPassword() {
    emit(state.copyWith(stateConfigrationPassword: !state.stateConfigrationPassword));
  }
}
