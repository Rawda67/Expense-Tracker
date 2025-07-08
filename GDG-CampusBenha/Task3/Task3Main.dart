import 'Task3.dart';

void main() {
  Rectangle rec1 = Rectangle(w: 6, h: 6);
  print("The width of the rectangle is ${rec1.width}");
  print("The height of the rectangle is ${rec1.height}");
  print("The area of the rectangle is ${rec1.area}");
  rec1.width = -6;
  rec1.height = -6;
  print("=====================");
}
