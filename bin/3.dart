

void main() {
  Car car = Car('Gasoline');
  car.accelerate();
  car.brake();
}
abstract class Drivable {
  void accelerate();
  void brake();
}
class Car implements Drivable {
  String fuelType;
  Car(this.fuelType);
  @override
  void accelerate() {
    print('Car accelerating');
  }
  @override
  void brake() {
    print('Car braking');
  }
}