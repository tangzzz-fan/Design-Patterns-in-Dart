import 'package:design_patterns/design_patterns/bridge.dart';
import 'package:test/test.dart';

void main() {
  test('Shape can be drawn with its implementor', () {
    var circle = ConcreteCircle();
    circle.draw(); // Should draw a circle.
  });

  test('Shape can change its implementor', () {
    var shape = ConcreteSquare();
    shape.draw(); // Initially should draw a square.

    var spy = SpyImplementor();
    shape.setImplementor(spy);
    shape.draw(); // Now should use the spy implementor.

    expect(spy.operationCalled, isTrue);
  });
}

class SpyImplementor extends Implementor {
  bool operationCalled = false;

  @override
  void operation() {
    operationCalled = true;
    print('Spy operation called');
  }
}
