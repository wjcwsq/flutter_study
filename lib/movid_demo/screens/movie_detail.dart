
import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget{
  final int id;
  MovieDetail({Key key, this.id}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MovieDetailState();
  }


}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: Center(
        child: Text('detail'),
      ),
    );
  }


}