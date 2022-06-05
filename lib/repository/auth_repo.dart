import 'package:dio/dio.dart';
import 'package:flutter_authorization/models/auth_model.dart';

class AuthRepo {
  AuthRepo({
    required this.dio,
  });
  final Dio dio;

  Future<AuthModel> sendPhone({required String phone}) async {
    final result = await dio.get(
      'generateUserId/test',
      queryParameters: {'msisdn': phone},
    );
    return const AuthModel().fromJson(result.data);
  }

  Future<AuthModel> sendCode(
      {required String code, required String token}) async {
    final result = await dio.get(
      'http://checkcode/test?code=$code&uuId=$token',
    );
    return const AuthModel().fromJson(result.data);
  }
}
