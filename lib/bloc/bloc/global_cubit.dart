import 'package:flutter_authorization/repository/app_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_authorization/constants/constants.dart';

part 'global_cubit.freezed.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit({required this.storage}) : super(const GlobalState.loading()) {
    init();
  }

  final AppStorage storage;

  bool get _isAuthorized => [
        storage.prefs.getString(AppConstants.token),
        storage.prefs.getString(AppConstants.code),
      ].every(
        (element) => element != null,
      );

  init() async {
    await storage.initPrefs();
    await Future.delayed(const Duration(seconds: 2));
    final token = storage.prefs.getString(AppConstants.token);
    final code = storage.prefs.getString(AppConstants.code);

    if (_isAuthorized) {
      emit(const GlobalState.authorized());
    } else {
      emit(const GlobalState.unauthorized());
    }
  }
}

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState.loading() = _GlobalState;
  const factory GlobalState.authorized() = _Authorized;
  const factory GlobalState.unauthorized() = _UnAuthorized;
}
