part of '../auth_bloc.dart';

extension Loogut on AuthBloc {
  Future<void> _logout(
    event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      await storage.prefs.clear();
      await Future.delayed(const Duration(seconds: 2));
      emit(const AuthState.success(token: ''));
    } catch (e) {
      emit(const AuthState.error());
    }
  }
}
