import 'package:flutter/foundation.dart';

///Counter model


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

class CounterModel extends ChangeNotifier {
  int number = 0;

  CounterModel();

  void increment() {
    number++;
    notifyListeners();
  }
  void decrease() {
    number--;
    notifyListeners();
  }
}