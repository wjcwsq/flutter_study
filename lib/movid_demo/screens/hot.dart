
import 'package:flutter/material.dart';
import 'package:flutter_study/movid_demo/utils/api.dart';

class Hot extends StatefulWidget{
  final bool history;
  Hot({Key key, this.history = false}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HotState();
  }

}

// AutomaticKeepAliveClientMixin 加上这个，2个标签页只会创建一次
// wantKeepAlive = true 必须设这个值
// 不然的话，每次切换页面，都要重建下页面，明显不好
class _HotState extends State<Hot> with AutomaticKeepAliveClientMixin{


  @override
  Widget build(BuildContext context) {

    print('build hot');

    getMovieList(history: false, start:  0, count:10);

    // TODO: implement build
    return  Center(
        child: Text('hot'),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}

