// Product 类表示最终生成的对象
class Product {
  late String part1;
  late String part2;

  String display() {
    return 'Product with $part1 and $part2';
  }
}

// Builder 接口
abstract class Builder {
  void buildPart1();
  void buildPart2();
  Product getResult();
}

// ConcreteBuilder 实现 Builder 接口
class ConcreteBuilder implements Builder {
  final Product _product = Product();

  @override
  void buildPart1() {
    _product.part1 = 'Part1 built';
  }

  @override
  void buildPart2() {
    _product.part2 = 'Part2 built';
  }

  @override
  Product getResult() {
    return _product;
  }
}

// Director 类使用 Builder 接口来构建产品
class Director {
  void construct(Builder builder) {
    builder.buildPart1();
    builder.buildPart2();
  }
}
