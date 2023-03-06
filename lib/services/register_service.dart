import "package:dio/dio.dart";
import "../models/user_model.dart";
import "register_interface.dart";

class RegisterService extends IRegister {
  @override
  Future<UserModel?> register(
      String name, String email, String password) async {
    final api = "https://reqres.in/api/register";
    final data = {
      "name": name,
      "email": email,
      "password": password,
      // "compassword": compassword
    };
    final dio = Dio();
    Response response;
    response = await dio.post(api, data: data);
    if (response.statusCode == 200) {
      final body = response.data;
      return UserModel(email: email, token: body['token']);
    } else {
      return null;
    }
  }
}
