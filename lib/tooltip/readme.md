

### toast 使用方法
https://www.jianshu.com/p/53f756c3d177 
1,添加依赖
2,点 Packages get 下载
3,在页面中导入dart文件
import 'package:fluttertoast/fluttertoast.dart';
4,使用
luttertoast.showToast(msg: 'this is a toast');
第一次用的时候，要重启下as，不然编译出错
或者停止连接，再重新调试也行？

### snackBar

## 第一种
直接使用，会出错，此时的context还是null,
                    //Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('这是snack bar'),
                      ),
                    );
         
要在return之前，先
```
    var _scaffoldkey = new GlobalKey<ScaffoldState>();
```   
然后再调用：     
```              
                    _scaffoldkey.currentState.showSnackBar(
                      SnackBar(
                        content: Text('这是snack bar'),
                      ),
                    );
```

##第二种
通过builder Widget来解决，原理还没有深究，感觉挺麻烦的

```
              Center(

                child: Builder(
                  builder: (context){
                    return GestureDetector(
                      child: Text('snackbar gesture',),
                      onTap: (){
                        final snackBar = SnackBar(
                          content: Text('这是snackbar gesture，3秒后自动关闭'),
                          backgroundColor: Colors.redAccent,
                          duration: Duration(seconds: 3),
                          action: SnackBarAction(
                            label: '撤消',
                            textColor: Colors.white,
                            // 这里点了之后，会直接关闭这个snackBar，不管有没有执行事件
                            onPressed: (){
                              print('close snackbar');
                            },
                          ),
                        );

                        Scaffold.of(context).showSnackBar(snackBar);
                      },

                    );
                  },
                ),
              ),
```




