import 'package:flutter/material.dart';

class TooltipTest extends StatelessWidget{

  // 这个子页面，要直接返回一个Scaffold，才有左上角的返回箭头
  // 如果返回一个MaterialApp，就没有返回箭头了
  // 具体原因还未深究
  @override
  Widget build(BuildContext context){
    return Scaffold( //
        appBar: AppBar(
          title: Text('app bar tooltip'),
        ),
        // 这个Center默认是内部控件居中显示，
        // 但若内部是个Column，则内容是靠上显示的
        //   需要在Column中指定居中显示
        //   似乎是自动铺满整个屏幕
        body: Center(
//          child: Text('center'),
          child:  Column(
            // 加上这个，才会居中显示，不然只是靠上显示
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('tooltip test demo', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500,),),
              Divider(),
              Tooltip(
                message: 'buttn tooltip 下面显示',
                child: RaisedButton(
                  child: Text('raised button tooltip'),
                  onPressed: () => print('raisedbutton onpress'),
                ),
              ),
              Divider(),
              Tooltip(
                message: 'icon tool tip 上面显示',
                preferBelow: false,
                child: Icon(
                  Icons.delete,
                  color: Colors.blue,
                ),
              ),

            ],
          ),
        ),

    );
  }
}