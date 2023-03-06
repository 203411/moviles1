// ignore: file_names
import 'package:dio/dio.dart' show Dio, Options;
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiAuth {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<String> login(String email, String password) async {
    final response = await _dio.post('direccion', data: {
      'email': email,
      'password': password,
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _logger.i('Response: ${response.data}');
    if (response.data['code'] == true) {
      prefs.setString('token', response.data['token']);
      prefs.setInt('id', response.data['basicUser']['idUser']);
    }
    prefs.setBool('code', response.data['code']);
    return 'Respuesta: ${response.data}';
  }

  Future<String> register(String email, String password, String name) async {
    final response = await _dio.post('direccion', data: {
      "email": email,
      "name": name,
      "pass": password,
    });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> forgotPassword(String email) async {
    final response = await _dio.post('direccion', data: {
      'email': email,
    });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> changePassword(String password, int id, String token) async {
    final response = await _dio.post('direccion',
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        }),
        data: {
          "idUser": id,
          "newPassword": password,
        });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

}
