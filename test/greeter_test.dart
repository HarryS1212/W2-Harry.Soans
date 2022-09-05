import 'package:numeric_to_letter/greeter.dart';
import 'package:test/test.dart';

void main () {
  test('greeter says hello', () {
    final greeter = Greeter();
    final greeting = greeter.sayHello();
    expect(greeting, 'Hello');
  });

}