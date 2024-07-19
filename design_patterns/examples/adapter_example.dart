import 'package:design_patterns/design_patterns/adapter.dart';

void main() {
  var adaptee = Adaptee();
  var adapter = Adapter(adaptee);

  adapter.request(); // 通过适配器使用适配者
}
