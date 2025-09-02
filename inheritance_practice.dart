class Vehicle {
  String brand;
  int year;
  Vehicle(this.brand, this.year);
  void showDetails() {
    print('Brand: ${brand} Year: ${year}');
  }
}

class Car extends Vehicle {
  int seats;
  Car(String brand, int year, this.seats) : super(brand, year);
  void showDetails() {
    print('Brand: ${brand} Year: ${year} Seats: ${seats}');
  }
}

class Bike extends Vehicle {
  String type;
  Bike(String brand, int year, this.type) : super(brand, year);
  void showDetails() {
    print('Brand: ${brand} Year: ${year} Type: ${type}');
  }
}

void main() {
  Car car = Car("suzuki", 2022, 4);
  car.showDetails();
  Bike bike = Bike('Hero Honda', 2021, "Scooty");
  bike.showDetails();
}
