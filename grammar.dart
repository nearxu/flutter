
import 'dart:math'

class Point{
  num x;
  num:y;
  Point(this.x,this.y);
  static num distance(Point a, Point b){
    var dx = a.x - b.x;
    var dy = a.y -b.y;
    return sqrt(dx*dx+dy*dy);
  }
}

main(){
  var a = new Point(2,2);
  var b = new Point(4,4);
  var distances = Point.distance(a,b);
  assert(distance < 2.9 && distance > 2.8);
}


String nickName = name ?? "Nick"; //如果name不为null，则nickName值为name的值，否则值为Nick


class Banana {
  var weight;
  var color;
  Banana(this.weight, this.color);
  
  void showWeight() {
    print("weight = $weight");
  }
  
  void showColor() {
    print("color = $color");
  }
}

// 调用
Banana(20, 'yellow')
    ..showWeight()
    ..showColor();
    
// 输出结果
weight = 20
color = yellow
