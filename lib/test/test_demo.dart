import 'package:flutter/material.dart';

class TestDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestDemoState();
  }

}

class TestDemoState extends State<TestDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('test demo'),
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        widthFactor: 3,
        heightFactor: 3,
        child: Container(
          width: 100,
          height: 50,
          color: Colors.red,
        ),
      ),
    );
  }

}