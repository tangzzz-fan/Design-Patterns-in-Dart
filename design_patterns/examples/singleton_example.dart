import 'package:design_patterns/design_patterns/singleton.dart';

void main() {
  // 获取单例实例
  var singleton1 = Singleton('Initial Data');
  print(singleton1.getData()); // 输出: Initial Data

  // 再次获取单例实例，此时应该得到相同的实例
  var singleton2 = Singleton('Different Data');
  print(singleton2.getData()); // 输出: Initial Data (单例模式确保只有一个实例)
}
