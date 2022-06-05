part of '../auth_bloc.dart';

extension SendPhone on AuthBloc {
  Future<void> _sendPhone(
    event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final result = await repo.sendPhone(phone: event.phone);
      emit(AuthState.success(token: result.object));
      storage.prefs.setString(AppConstants.token, result.object);
    } catch (e) {
      emit(const AuthState.error());
    }
  }
}
