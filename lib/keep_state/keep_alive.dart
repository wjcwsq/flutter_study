import 'package:flutter/material.dart';

class KeepAliveApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'keep alive app',
      // 这个值，可以省略，源码中会自动检查，若为空，自动赋值为 Colors.blue
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('keep alive bar'),
        ),
        body: Center(
          child: Text('keep alive'),
        ),
      ),

    );
  }

}