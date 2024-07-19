import 'package:design_patterns/design_patterns/strategy.dart';
import 'package:test/test.dart';

// void main() {
//   test('Context uses ConcreteStrategyA', () {
//     var context = Context(ConcreteStrategyA());
//     context.executeStrategy();
//     expect(context._strategy, isA<ConcreteStrategyA>());
//   });

//   test('Context switches to ConcreteStrategyB', () {
//     var context = Context(ConcreteStrategyA());
//     context.setStrategy(ConcreteStrategyB());
//     context.executeStrategy();
//     expect(context._strategy, isA<ConcreteStrategyB>());
//   });
// }

void main() {
  group('Strategy Pattern Tests', () {
    test('Context should execute ConcreteStrategyA', () {
      final strategyA = ConcreteStrategyA();
      final context = Context(strategyA);
      expect(
          context.executeStrategy(), equals('ConcreteStrategyA: Algorithm A'));
    });

    test('Context should execute ConcreteStrategyB', () {
      final strategyB = ConcreteStrategyB();
      final context = Context(strategyB);
      expect(
          context.executeStrategy(), equals('ConcreteStrategyB: Algorithm B'));
    });

    test('Context should change strategy', () {
      final strategyA = ConcreteStrategyA();
      final strategyB = ConcreteStrategyB();
      final context = Context(strategyA);

      expect(
          context.executeStrategy(), equals('ConcreteStrategyA: Algorithm A'));

      context.setStrategy(strategyB);
      expect(
          context.executeStrategy(), equals('ConcreteStrategyB: Algorithm B'));
    });
  });
}
