import 'dart:math';

void main() {
  print(mayBeFun?.call(1));
  final callableClass = CallableClass();
  callableClass('John');
}

String Function(int) fun = (n) => '$n';

String Function(int)? mayBeFun = Random().nextBool() ? fun : null;

class CallableClass {
  void call(String name) {
    print('Hello $name');
  }
}
