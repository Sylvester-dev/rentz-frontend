import 'package:flutter/cupertino.dart';

class NotiBox {
    String msg;
    String product;
    String timer;
    NotiBox({@required msg,@required product,@required timer}){
      this.msg = msg;
      this.product = product;
      this.timer = timer;
    }
}