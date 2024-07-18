import 'package:design_patterns/design_patterns/builder.dart';

void main() {
  // 创建建造者
  ConcreteBuilder builder = ConcreteBuilder();
  // 构建产品
  builder.buildPart1();
  builder.buildPart2();
  // 获取结果
  Product product = builder.getResult();
  print(product);
}
