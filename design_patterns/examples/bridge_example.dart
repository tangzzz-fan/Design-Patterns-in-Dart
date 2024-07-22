import 'package:design_patterns/design_patterns/bridge.dart';

void main() {
  var circle = ConcreteCircle();
  circle.draw(); // Drawing a circle.

  var square = ConcreteSquare();
  square.draw(); // Drawing a square.

  // 使用依赖注入修改实现
  square.setImplementor(CircleImplementor());
  square.draw(); // Now it draws a circle with square's behavior.
}
