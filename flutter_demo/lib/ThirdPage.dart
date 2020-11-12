import 'package:flutter/material.dart';
import 'Model.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Text("${CounterModel.of(context).number}"),
            RaisedButton(
              child: Text("Subtract Number"),
              onPressed: () {
                CounterNotification().dispatch(context);
            },
            )
          ],
        ),
      ),
    );
  }
}
