import 'package:dio/dio.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/features/data/model/all_users_model.dart';

class UsersRepo {
  final Dio dio = Dio();

  Future<List<User>> getUsers() async {
    try {
      final response = await dio.get(
        'https://dummyjson.com/users?limit=50',
        // '${ApiConstant.baseUrl}${ApiConstant.getUsers}',
      );
      if (response.statusCode == 200) {
        final List<dynamic> usersJson = response.data['users'];
        return usersJson.map((json) => User.fromJson(json)).toList();
      } else {
        throw Exception(AppString.errorFetchingUsers);
      }
    } catch (e) {
      throw Exception('${AppString.errorFetchingUsers}: $e');
    }
  }
}
