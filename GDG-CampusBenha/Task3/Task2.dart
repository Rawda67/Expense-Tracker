/* Make a class called Shape that has property (width, height) 
and behavior (area), and then make another 2 classes called 
(Rectangle, Square) that extends the class Shape and has a 
property (color) and then print them.  
** make override on area method on both 2 classes **  */
abstract class Shape {
  double? width;
  double? height;
  Shape({required this.width, required this.height});
  void area();
}

class Rectangle extends Shape {
  String? color;
  Rectangle({required double width, required double height})
      : super(width: width, height: height);
  @override
  void area() {
    print("Rectangle Area = ${width! * height!}");
  }
}

class Square extends Shape {
  String? color;
  Square({required double width, required double height})
      : super(width: width, height: height);
  @override
  void area() {
    print("Square Area = ${width! * height!}");
  }
}

void main() {
  Rectangle rec1 = Rectangle(width: 6, height: 6);
  rec1.color = "blue";
  print(rec1.color);
  print(rec1.height);
  print(rec1.width);
  rec1.area();
  print("=====================");
  Square s1 = Square(height: 6, width: 6);
  s1.color = "red";
  print(s1.color);
  print(s1.height);
  print(s1.width);
  s1.area();
}
