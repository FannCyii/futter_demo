import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'Counter.dart';

class ThirdPage extends StatefulWidget {

  Counter _counterStore;
  ThirdPage(this._counterStore);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override
  Widget build(BuildContext context) {
    print("third page");
    return Container(
      color: Colors.lightGreen,
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Observer(builder: (_)=>Text("${widget._counterStore.number}")),
            RaisedButton(
              child: Text("decease Number"),
              onPressed: () {
                // model.increment();
                widget._counterStore.decrease();
            },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("thirdPage is disposed");
  }
}
