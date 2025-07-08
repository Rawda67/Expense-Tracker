class Cars {
  String? name;
  String? model;
  String? color;
  Cars({this.name, this.color, this.model});
}

void main() {
  Cars car1 = Cars(name: "m", model: "R6", color: "Black");
  car1.name;
  car1.model;
  car1.color;
}
