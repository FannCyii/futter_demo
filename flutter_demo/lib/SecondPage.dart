import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_demo/ThirdPage.dart';
import 'Counter.dart';
import 'ThirdPage.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SecondPage extends StatefulWidget {
  Counter _counterStore;
  SecondPage(this._counterStore);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    //watch方法必须在build或provide的update回调方法中调用
    // var model = context.watch<CounterModel>();
    print("second page");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Observer(builder: (context){
                return Text("${widget._counterStore.number}");
              }),
              RaisedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ThirdPage(widget._counterStore);
                }));
              }),
              RaisedButton(
                  child: Text("+ number"),
                  onPressed: () {
                    //do something
                    widget._counterStore.increment();
                  })
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("second is disposed");
  }
}
