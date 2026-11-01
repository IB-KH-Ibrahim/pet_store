import 'package:clean_api_client/clean_api_client.dart';
import 'package:pet/core/api/api_servise.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/featuser/authntcaion/data/token_storage.dart';

class AuthServices {
  static Future<ApiResponse<dynamic>> logIn(
    String username,
    String password,
  ) async {
    final api = ApiServise();
    final _storage = TokenStorage();
    final response = await api.getData(ApiString.login, {
      username: username,
      password: password,
    });
    print(response.hashCode);
    if (response.data != null) {
      await _storage.saveTokens(
        accessToken: response.data['acces_token'],
        refreshToken: response.data['refresh_token'],
      );
      api.setToken(accessToken: response.data['acces_token']);
    }
    print(response);
    return response;
  }
}
