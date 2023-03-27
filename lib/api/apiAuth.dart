// ignore: file_names
import 'package:dio/dio.dart' show Dio, Options, Response;
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiAuth {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<String> login(String email, String password) async {
    final response =
        await _dio.post('http://3.17.8.87:3000/api/user/login', data: {
      'email': email,
      'password': password,
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> emailVerify(String email) async {
    final response =
        await _dio.post('http://3.17.8.87', data: {'email': email});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> profile(
      String nombre,
      String email,
      String password,
      String edad,
      String sexo,
      String estatura,
      String peso,
      String fechaNacimiento,
      String domicilio,
      String telefonoPersonal,
      String telefonoEmergencia,
      String institucion,
      String seguroSocial,
      String medicoTratante,
      int id) async {
    final response =
        await _dio.post('http://3.17.8.87:3000/api/user/update/$id', data: {
      "email": email,
    });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> getUser(String email) async {
    final response =
        await _dio.get('http://3.17.8.87:3000/api/user/getemail/$email');
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> register(
      String name,
      String email,
      String password,
      String edad,
      String sexo,
      String estatura,
      String peso,
      String fechaNacimiento,
      String domicilio,
      String telefonoPersonal,
      String telefonoEmergencia,
      String institucion,
      String seguroSocial,
      String medicoTratante) async {
    final response =
        await _dio.post('http://3.17.8.87:3000/api/user/register', data: {
      "email": email,
      "nombre": name,
      "password": password,
      "edad": edad,
      "sexo": sexo,
      "estatura": estatura,
      "peso": peso,
      "fecha_nacimiento": fechaNacimiento,
      "domicilio": domicilio,
      "telefono_personal": telefonoPersonal,
      "telefono_emergencia": telefonoEmergencia,
      "institucion": institucion,
      "seguro_social": seguroSocial,
      "medico_tratante": medicoTratante
    });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> forgotPassword(String email) async {
    final response =
        await _dio.post('http://3.17.8.87:3000/api/recovery_password', data: {
      'email': email,
    });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }

  Future<String> changePassword(String password, String password2) async {
    final response =
        await _dio.post('http://3.17.8.87:3000/api/change_password', data: {
      // "email": email,
      "password": password,
      "newPassword": password,
    });
    _logger.i('Response: ${response.data}');
    return 'Respuesta: ${response.data}';
  }
}
