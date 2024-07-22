import 'package:design_patterns/design_patterns/singleton.dart';
import 'package:test/test.dart';

void main() {
  test('Singleton instance is unique', () {
    var singleton1 = Singleton('Test Data');
    var singleton2 = Singleton('Another Data');

    // 确保两个引用指向同一个实例
    expect(singleton1, equals(singleton2));
  });
}
