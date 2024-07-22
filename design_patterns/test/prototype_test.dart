import 'package:design_patterns/design_patterns/prototype.dart';
import 'package:test/test.dart';

void main() {
  test('Clone of ConcretePrototypeA is correct', () {
    var prototypeA = ConcretePrototypeA('Prototype A');
    var cloneA = prototypeA.clone();

    expect(cloneA, isNot(prototypeA)); // 确保不是同一个实例
    expect(cloneA, isA<ConcretePrototypeA>());
  });

  test('Clone of ConcretePrototypeB is correct', () {
    var prototypeB = ConcretePrototypeB('Prototype B');
    var cloneB = prototypeB.clone();

    expect(cloneB, isNot(prototypeB)); // 确保不是同一个实例
    expect(cloneB, isA<ConcretePrototypeB>());
  });
}
