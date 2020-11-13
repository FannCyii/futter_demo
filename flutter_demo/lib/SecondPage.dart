import 'package:flutter/material.dart';
import 'package:flutter_demo/ThirdPage.dart';
import 'package:provider/provider.dart';
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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //watch方法必须在build或provide的update回调方法中调用
    var model = context.watch<CounterModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Consumer<CounterModel>(
                  builder: (_, model, child) {
                    print("second page update: ${model.number}");
                    return Text("${model.number}");
                  },
                  // child: Text('$_counter')
              ),
              RaisedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChangeNotifierProvider.value(
                      value: model,
                      child: ThirdPage());
                }));
              }),
              RaisedButton(
                  child: Text("Subtract number"),
                  onPressed: () {
                    model.decrease();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
