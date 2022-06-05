import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

@freezed
abstract class AuthModel with _$AuthModel {
  const factory AuthModel({
    @Default(0) int status,
    @Default('') String message,
    @Default('') String object,
    @Default('') String externalId,
  }) = _AuthModel;
}

extension AuthJsonModel on AuthModel {
  AuthModel fromJson(dynamic data) {
    return AuthModel(
      status: data['status'],
      message: data['message'],
      object: data['object'] ?? '',
      externalId: data['externalId'] ?? '',
    );
  }
}
