import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';


// class CounterModel extends InheritedWidget {
//
//   final int number;
//
//   CounterModel({ Key key, @required Widget child, @required int number}):
//         assert(child != null),
//         this.number = number,
//         super(key: key, child: child);
//
//   static CounterModel of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<CounterModel>();
//   }
//
//   @override
//   bool updateShouldNotify(CounterModel old) {
//     final isNotify = number != old.number;
//     print("update should notify: $isNotify");
//     return isNotify;
//   }
// }

// class CounterModel extends ChangeNotifier {
//   int number = 0;
//
//   CounterModel();
//
//   void increment() {
//     number++;
//     notifyListeners();
//   }
//   void decrease() {
//     number--;
//     notifyListeners();
//   }
// }

part 'Counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int _value = 0;

  @action
  void increment() {
    _value++;
  }

  @action
  void decrease() {
    _value--;
  }

  @computed
  String get number => "$_value";
}