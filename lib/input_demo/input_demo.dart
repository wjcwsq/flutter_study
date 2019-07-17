import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget{
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('input demo'),
      ),
      body: Column(
          // 上下左右留白30
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              // maxLength 长度设置后，右下角会有数字显示,无法输入超过的字符
              // 但onChanged 事件依然可触发
              child: Column(
                // 水平方向，默认是居中，这里设置为左对齐
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '请输入内容',
                    style: TextStyle(fontSize: 15.5, height: 1.2, color: Colors.blue),
                    textAlign: TextAlign.start,
                  ),
                  TextField(
                    maxLength: 20,
                    onChanged: (input) => print('onChanged: $input'),
                    onSubmitted: (input) => print('onSubmitted: $input'),
                  ),
                  Divider(),
                  Text('复杂一点的'),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (input) => print('onchange: $input'),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      // 获取焦点后，变色，且labelText会移动
                      icon:Icon(Icons.directions_bike),
                      labelText: '请输入你的姓名',
                      helperText: '请输入你的真实姓名',
                    ),
                    // 自动弹出输入键盘
                    autofocus: true,
                  ),

                ]
              ),
            ),
          ],
        ),
      );

  }

}