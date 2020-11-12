import 'package:flutter/material.dart';
import 'package:flutter_demo/ThirdPage.dart';
import 'Model.dart';
import 'ThirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  void setCounter() {
    setState(() {
      _counter--;
      CounterNotification().dispatch(context);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _counter = CounterModel.of(context).number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Text('$_counter'),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CounterModel(child: ThirdPage(), number: _counter);
                }));
              }),
              RaisedButton(
                child: Text("Subtract number"),
                  onPressed: (){
                    setCounter();
              })
            ],
          ),
        ),
      ),
    );
  }
}
