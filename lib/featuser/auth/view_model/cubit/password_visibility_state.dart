class PasswordVisibilityState {
  final bool statePassword;
  final bool stateConfigrationPassword;
  PasswordVisibilityState({
    required this.statePassword,
    required this.stateConfigrationPassword,
  });

  PasswordVisibilityState copyWith({
    bool? statePassword,
    bool? stateConfigrationPassword,
  }) {
    return PasswordVisibilityState(
      statePassword: statePassword ?? this.statePassword,
      stateConfigrationPassword:
          stateConfigrationPassword ?? this.stateConfigrationPassword,
    );
  }
}
