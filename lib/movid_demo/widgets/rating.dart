import 'package:flutter/material.dart';

class Rating extends StatelessWidget{
  final count;
  final rating;

  Rating({Key key, this.rating, this.count}): super(key:key);

  @override
  Widget build(BuildContext context) {

    print('count');
    print(rating);
    
    List calcRateList(){
      Map<int, int> mm = {1:10, 2:20};
      MapEntry a = MapEntry('a', 'aaa');
      print(a.key);

      //var dd =  mm.values.reduce((a,b) => a + build(context));

      var totalRate =  rating['details'].values.reduce((a,b) => a + b);
      print('totalRate: $totalRate');
      return List.generate(5, (index){
        return {
          'title': '${5 - index}星',
          'value': rating['details']['${5 - index}'] / (totalRate ?? 1),
        };
      });
    }

    //calcRateList();

    // TODO: implement build
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: calcRateList()
                  .map((item) => Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Text(item['title']),
                  SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: LinearProgressIndicator(
                      value: item['value'],
                    ),
                  ),
                  SizedBox(width: 5,),
                  SizedBox(
                    width: 60,
                    child: Text((100 * item['value']).toStringAsFixed(2)),
                  ),



                ],
              ))
                  .toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                CircleAvatar(child: Text(rating['average'].toString()),),
                Text(count.toString() + '人'),

              ],
            ),
          )
        ],
      ),
    );
  }

}