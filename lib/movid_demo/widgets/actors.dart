import 'package:flutter/material.dart';

class Actors extends StatelessWidget{

  List casts;
  List directors;
  Actors({Key key, this.directors, this.casts}):super(key: key);



  @override
  Widget build(BuildContext context) {

    List actorsList = [
      directors.map((item){
        item['director'] = true;
        return item;
      }),
      casts.map((item){
        item['director'] = false;
        return item;
      }),
    ];

    List aa = [
    List.generate(5, (index) => index),
    List.generate(5, (index) => index * 10),
    ];

    print(aa);
    print(actorsList[0].runtimeType);




    return Column(

      children: <Widget>[
        ListTile(
          title: Text('演职人员'),
          trailing: Text('全部>'),
        ),
        Container(
          height: 200,
          width: 400,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(300, (index){
              return Text('$index');
            }),
          ),
        ),
      ],
    );
  }



}