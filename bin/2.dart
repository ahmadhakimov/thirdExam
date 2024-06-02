

void main() {
  Circle circle = Circle(2);
  Square square = Square(3);

  print('Circle area: ${circle.area().toString()}'); // 12.57
  print('Square area: ${square.area()}'); // 9
}

abstract class Shape {
  double area();
}
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }
}
class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double area() {
    return side * side;
  }
}