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

# Adapter Pattern

The Adapter pattern allows incompatible interfaces to work together. It acts as a bridge between two incompatible interfaces by wrapping the interface of a class into another interface that a client expects.

## Usage

- Define a Target interface that describes the domain-specific interface that Client uses.
- Create an Adaptee class with an incompatible interface.
- Create an Adapter class that implements the Target interface and contains an instance of Adaptee.
- In the Adapter class, implement the Target interface methods to call the appropriate Adaptee methods.

## Example

```dart
import 'package:design_patterns/design_patterns/adapter.dart';

void main() {
  var adaptee = Adaptee();
  var adapter = Adapter(adaptee);
  
  // Using the adapter
  var result = adapter.request();
  print(result);  // Output: Adaptee: Specific request.
  
  // Accessing private members through protocol
  var specificResult = (adapter as AdapterProtocol).specificRequest();
  print(specificResult);  // Output: Adaptee: Specific request.
}

# Strategy Pattern

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It lets the algorithm vary independently from clients that use it.

## Usage

- Define a Strategy interface that declares methods common to all supported algorithms.
- Implement ConcreteStrategy classes, each implementing the Strategy interface.
- Create a Context class that contains a reference to a Strategy object.
- The Context class defines an interface for clients to access the strategy.

## Example

```dart
import 'package:design_patterns/design_patterns/strategy.dart';

void main() {
  var strategyA = ConcreteStrategyA();
  var context = Context(strategyA);
  
  var result = context.executeStrategy();
  print(result);  // Output: ConcreteStrategyA: Algorithm A
  
  var strategyB = ConcreteStrategyB();
  context.setStrategy(strategyB);
  
  result = context.executeStrategy();
  print(result);  // Output: ConcreteStrategyB: Algorithm B
}