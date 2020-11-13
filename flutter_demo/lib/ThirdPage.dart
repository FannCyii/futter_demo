import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override
  Widget build(BuildContext context) {

    var model = Provider.of<CounterModel>(context);

    return Container(
      color: Colors.lightGreen,
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Consumer<CounterModel>(builder: (_, model, child) {
              return  Text("${model.number}");
            },
                // child: Text("0")
            ),
            RaisedButton(
              child: Text("add Number"),
              onPressed: () {
                model.increment();
            },
            )
          ],
        ),
      ),
    );
  }
}
