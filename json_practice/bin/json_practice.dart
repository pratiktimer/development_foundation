import 'package:json_practice/user_repository.dart';

void main() async {
  try {
    final user = await UserRepository().fetchUser(10);
    print(user);
  } catch (e) {
    print(e.toString());
  }
}
