import 'package:bloc/bloc.dart';
import 'package:flutter_authorization/constants/constants.dart';
import 'package:flutter_authorization/repository/app_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_authorization/repository/auth_repo.dart';

part 'auth_bloc.freezed.dart';
part 'parts/sendphone.dart';
part 'parts/sendcode.dart';
part 'parts/logout.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.repo,
    required this.storage,
  }) : super(const AuthState.initial()) {
    on<_SendPhone>(_sendPhone);
    on<_SendCode>(_sendCode);
    on<_SendCode>(_logout);
  }
  final AuthRepo repo;
  final AppStorage storage;
}

extension IsLoading on AuthState {
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendPhone({
    required String phone,
  }) = _SendPhone;
  const factory AuthEvent.sendCode({
    required String code,
    required String token,
  }) = _SendCode;
  const factory AuthEvent.logout() = _Logout;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success({@Default('') String token}) = _Success;
  const factory AuthState.initial() = _Initial;
  const factory AuthState.error() = _Error;
}
