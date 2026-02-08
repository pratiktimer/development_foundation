import 'dart:convert';

import 'package:json_practice/user.dart';

final String jsonData = '''
[
  {
    "id": 1,
    "email": "janet.weaver@email.com",
    "first_name": "Janet",
    "last_name": "Weaver"
  },
  {
    "id": 2,
    "email": "george.bluth@email.com",
    "first_name": "George",
    "last_name": "Bluth"
  },
  {
    "id": 3,
    "email": "emma.wong@email.com",
    "first_name": "Emma",
    "last_name": "Wong"
  }
]
''';

class UserRepository {
  Future<User> fetchUser(int id) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final userList = jsonDecode(jsonData) as List;

      final userJson =
          userList.firstWhere(
                (e) => e['id'] == id,
                orElse: () => throw 'User not found',
              )
              as Map<String, dynamic>;

      final user = User.fromJson(userJson);

      return user;
    } catch (e) {
      rethrow;
    }
  }
}
