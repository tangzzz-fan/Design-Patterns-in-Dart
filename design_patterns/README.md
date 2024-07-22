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

# Prototype Pattern

The Prototype pattern is a creational design pattern that allows an object to be used as a prototype to create new instances of itself. This pattern is useful when creating complex objects or when the initialization cost of an object is high.

## Usage

- Define a prototype interface with a method for cloning the object.
- Create concrete prototype classes that implement the prototype interface.
- Use the clone method to create new instances of the prototype.

## Example

```dart
import 'package:design_patterns/design_patterns/prototype.dart';

void main() {
  var prototypeA = ConcretePrototypeA('Prototype A');
  prototypeA.use();

  var cloneA = prototypeA.clone();
  cloneA.use();

  print('---');

  var prototypeB = ConcretePrototypeB('Prototype B');
  prototypeB.use();

  var cloneB = prototypeB.clone();
  cloneB.use();
}

# Bridge Pattern

The Bridge pattern is a structural design pattern that decouples an abstraction from its implementation so that the two can vary independently. This pattern is useful when you want to connect an abstract class and one of its implementations dynamically.

## Usage

- Define an abstraction and an implementor interface.
- Create concrete implementations of the implementor interface.
- Define concrete abstractions that contain an instance of the implementor interface and delegate the implementation to it.

## Example

```dart
import 'package:your_project_name/design_patterns/bridge.dart';

void main() {
  var circle = ConcreteCircle();
  circle.draw(); // Drawing a circle.

  var square = ConcreteSquare();
  square.draw(); // Drawing a square.

  // Using dependency injection to change the implementor
  square.setImplementor(CircleImplementor());
  square.draw(); // Now it draws a circle with square's behavior.
}

# Singleton Pattern

The Singleton pattern ensures that a class has only one instance and provides a global point of access to that instance.

## Usage

- Define a private constructor.
- Create a static variable to hold the instance of the class.
- Provide a factory constructor to control the instance creation.

## Example

```dart
import 'package:design_patterns/design_patterns/singleton.dart';

void main() {
  var singleton1 = Singleton('Initial Data');
  print(singleton1.getData()); // Outputs: Initial Data

  var singleton2 = Singleton('Different Data');
  print(singleton2.getData()); // Outputs: Initial Data (Singleton ensures only one instance)
}

# Decorator Pattern

The Decorator pattern is a structural design pattern that allows behavior to be added to individual objects, either statically or dynamically, without affecting the behavior of other objects from the same class.

## Usage

- Define an interface for the components.
- Create a concrete component class that implements the interface.
- Define an abstract decorator class that also implements the interface and holds a reference to a component.
- Create concrete decorator classes that extend the abstract decorator and add additional behavior.

## Example

```dart
import 'package:your_project_name/design_patterns/decorator.dart';

void main() {
  var component = ConcreteComponent();
  component.operate(); // Outputs: ConcreteComponent

  var decoratorA = ConcreteDecoratorA(component);
  decoratorA.operate(); // Outputs: ConcreteComponent -> Added Behavior A

  var decoratorB = ConcreteDecoratorB(component);
  decoratorB.operate(); // Outputs: ConcreteComponent -> Added Behavior B

  // Decorators can be stacked
  var decoratorAB = ConcreteDecoratorA(decoratorB);
  decoratorAB.operate(); // Outputs: ConcreteComponent -> Added Behavior B -> Added Behavior A
}