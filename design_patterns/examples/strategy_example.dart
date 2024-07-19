import 'package:design_patterns/design_patterns/strategy.dart';

void main() {
  var context = Context(ConcreteStrategyA());
  context.executeStrategy(); // 使用策略A

  print('---');

  context.setStrategy(ConcreteStrategyB());
  context.executeStrategy(); // 切换到策略B
}
