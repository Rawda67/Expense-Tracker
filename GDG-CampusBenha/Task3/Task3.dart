/*) Create a class named Rectangle with properties for _width 
and _height. Add getters named width and height. Add 
setters for these properties that ensure you can’t give 
negative values. Add a getter for a calculated property 
named area that returns the area of the rectangle.*/
class Rectangle {
  double? _width;
  double? _height;
  Rectangle({required double w, required double h}) {
    this.width = w;
    this.height = h;
  }
  double get width => _width!;
  double get height => _height!;
  set width(double width) {
    if (width < 0) {
      print("Width can't be negative");
    } else {
      _width = width;
    }
  }

  set height(double height) {
    if (height < 0) {
      print("Height can't be negative");
    } else {
      _width = height;
    }
  }

  double get area => _width! * _height!;
}
