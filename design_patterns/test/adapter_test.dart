import 'package:design_patterns/design_patterns/adapter.dart';
import 'package:test/test.dart';

// void main() {
//   test('Adapter uses Adaptee correctly', () {
//     var adaptee = Adaptee();
//     var adapter = Adapter(adaptee);
//     var spy = SpyAdaptee();
//     adapter._adaptee = spy;

//     adapter.request();

//     expect(spy.specificRequestCalled, isTrue);
//   });
// }

// class SpyAdaptee extends Adaptee {
//   bool specificRequestCalled = false;

//   @override
//   void specificRequest() {
//     specificRequestCalled = true;
//     super.specificRequest();
//   }
// }

void main() {
  group('Adapter Pattern Tests', () {
    late Adaptee adaptee;
    late Adapter adapter;

    setUp(() {
      adaptee = Adaptee();
      adapter = Adapter(adaptee);
    });

    test('Adapter should implement Target interface', () {
      expect(adapter, isA<Target>());
    });

    test('Adapter should implement AdapterProtocol', () {
      expect(adapter, isA<AdapterProtocol>());
    });

    test('Adapter request() should call Adaptee specificRequest()', () {
      expect(adapter.request(), equals('Adaptee: Specific request.'));
    });

    test('Adapter specificRequest() should call Adaptee specificRequest()', () {
      expect(adapter.specificRequest(), equals('Adaptee: Specific request.'));
    });

    test('Adapter and Adaptee should return the same result', () {
      expect(adapter.request(), equals(adaptee.specificRequest()));
    });
  });
}
