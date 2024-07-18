# Design-Patterns-in-Dart

# Builder Pattern

The Builder pattern is used when you want to construct complex objects step by step, and the construction process should be independent of the parts that make up the objects.

## Usage

- Define a product interface with a method for assembling parts.
- Create a concrete product class that implements the product interface.
- Define a builder interface with methods for building parts of the product.
- Create concrete builder classes that implement the builder interface.
- Define a director class that uses the builder interface to construct the product.

## Example

```dart
import 'package:design_patterns/design_patterns/builder.dart';

void main() {
  var builder = ConcreteBuilder();
  var director = Director(builder);
  director.construct();

  var product = builder.getResult();
  print(product);
}

# Abstract Factory Pattern

The Abstract Factory pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.

## Usage

- Define an abstract product class.
- Define concrete product classes.
- Define an abstract factory interface.
- Define concrete factory classes that implement the abstract factory interface.

## Example

```dart
import 'package:design_patterns/design_patterns/abstract_factory.dart';

void main() {
  AbstractFactory factory1 = ConcreteFactory1();
  ProductA productA1 = factory1.createProductA();
  ProductB productB1 = factory1.createProductB();
  productA1.use();
  productB1.use();

  print('---');

  AbstractFactory factory2 = ConcreteFactory2();
  ProductA productA2 = factory2.createProductA();
  ProductB productB2 = factory2.createProductB();
  productA2.use();
  productB2.use();
}

# Builder Pattern

The Builder pattern is used when you want to construct complex objects step by step, and the construction process should be independent of the parts that make up the objects.

## Usage

- Define a product interface with a method for assembling parts.
- Create a concrete product class that implements the product interface.
- Define a builder interface with methods for building parts of the product.
- Create concrete builder classes that implement the builder interface.
- Define a director class that uses the builder interface to construct the product.

## Example

```dart
import 'package:design_patterns/design_patterns/builder.dart';

void main() {
  var builder = ConcreteBuilder();
  var director = Director(builder);
  director.construct();

  var product = builder.getResult();
  print(product);
}