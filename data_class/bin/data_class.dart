import 'package:data_class/person.dart';

void main() {
  final person1 = Person(id: 1, name: 'john', email: 'john@email.com');
  final person3 = Person(id: 1, name: 'john', email: 'john@email.com');
  final person2 = person1.copyWith(id: 2, email: 'johndoe@email.com');
  print(person1);
  print(person2);
  print(person1 == person3);
  print('${person1.hashCode} / ${person3.hashCode}');
}
