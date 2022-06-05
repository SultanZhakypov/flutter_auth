part of '../auth_bloc.dart';

extension SendCode on AuthBloc {
  Future<void> _sendCode(
    event,
    Emitter<AuthState> emit,
  ) async {
     emit(const AuthState.loading());

      String correctToken = event.token;
      if (correctToken == '') {
        correctToken =storage.prefs.getString(AppConstants.token);
      }
      try {
        await repo.sendCode(
          code: event.code,
          token: correctToken,
        );
       await   storage.prefs.setString(AppConstants.code, event.code);
        emit(AuthState.success(token: event.token));
      } catch (e) {
        emit(const AuthState.error());
      }
  }
}
