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
