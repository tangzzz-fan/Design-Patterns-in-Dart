import 'package:design_patterns/design_patterns/builder.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Builder Pattern Tests', () {
    test('Should build a product correctly', () {
      // 创建建造者
      ConcreteBuilder builder = ConcreteBuilder();
      // 构建产品
      builder.buildPart1();
      builder.buildPart2();
      // 获取结果
      Product product = builder.getResult();

      // 断言检查
      expect(product.part1, 'Part1 built');
      expect(product.part2, 'Part2 built');
    });
  });
}
