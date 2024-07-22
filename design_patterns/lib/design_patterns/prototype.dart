// 原型接口
abstract class Prototype {
  void use();
  Prototype clone();
}

// 具体原型
class ConcretePrototypeA implements Prototype {
  final String _name;

  ConcretePrototypeA(this._name);

  @override
  void use() {
    print('Prototype A: $_name');
  }

  @override
  ConcretePrototypeA clone() {
    return ConcretePrototypeA(_name);
  }
}

class ConcretePrototypeB implements Prototype {
  final String _name;

  ConcretePrototypeB(this._name);

  @override
  void use() {
    print('Prototype B: $_name');
  }

  @override
  ConcretePrototypeB clone() {
    return ConcretePrototypeB(_name);
  }
}
