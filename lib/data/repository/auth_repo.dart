import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/data/api/api_client.dart';
import 'package:hive/util/app_constants.dart';

class AuthRepo extends GetxService {
  
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.sharedPreferences});

  Future<String?> getAuthToken() async {
    return sharedPreferences.getString(AppConstants.TOKEN);
  }

  Future<void> saveAuthToken(String token) async {
    try {
      await sharedPreferences.setString(AppConstants.TOKEN, token);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteAuthToken() async {
  try {
    await sharedPreferences.remove(AppConstants.TOKEN);
  } catch (e) {
    rethrow;
  }
}


  Future<Response> login(ApiClient? apiClient,{String? email, String? password}) async {
    try {
      Response response = await apiClient!.postData(
        AppConstants.loginUrl,
        {"email": email, "password": password},
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> register(
    ApiClient? apiClient,
      {String? email,
      String? password,
      String? firstname,
      String? lastname}) async {
    try {
      Response response = await apiClient!.postData(AppConstants.loginUrl, {
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "password": password
      });
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
