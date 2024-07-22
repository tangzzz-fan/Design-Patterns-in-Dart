// bridge.dart
// 实现接口
abstract class Implementor {
  void operation();
}

// 圆形实现
class CircleImplementor implements Implementor {
  @override
  void operation() {
    print('Drawing a circle.');
  }
}

// 正方形实现
class SquareImplementor implements Implementor {
  @override
  void operation() {
    print('Drawing a square.');
  }
}

// 抽象形状类
abstract class Shape {
  late Implementor _implementor;

  // 添加一个公共方法来设置 Implementor
  void setImplementor(Implementor implementor) {
    _implementor = implementor;
  }

  void draw() {
    _implementor.operation();
  }
}

// 具体形状类
class ConcreteCircle extends Shape {
  ConcreteCircle() {
    // 可以在构造函数中调用 setImplementor 方法
    setImplementor(CircleImplementor());
  }
}

class ConcreteSquare extends Shape {
  ConcreteSquare() {
    setImplementor(SquareImplementor());
  }
}
