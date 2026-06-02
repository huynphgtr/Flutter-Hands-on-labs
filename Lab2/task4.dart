class Car{
  String? brand;
  String? model; 
  String? color;  
  Car(String brand, String model, String color){
    this.brand = brand;
    this.model = model;
    this.color = color;
  }

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Color: $color');
  }

  void startEngine() {
    print('The engine of the $brand $model is starting...');
  }
}

class ElectricCar extends Car{
  int? batteryCapacity;
  // ElectricCar(String brand, String model, String color) : super(brand, model, color);
  ElectricCar(String brand, String model, String color, int batteryCapacity) : super(brand, model, color){
    this.batteryCapacity = batteryCapacity;
  }
  @override
  void displayInfo() {
    super.displayInfo();
    print('Battery Capacity: $batteryCapacity kWh');
  } 
  @override
  void startEngine() {
    print('The electric engine of the $brand $model is starting silently...');
  }

}


void main(){
  Car car1 = Car('Toyota', 'Camry', 'Red');
  car1.displayInfo();
  car1.startEngine();
  ElectricCar electricCar1 = ElectricCar('Tesla', 'Model S', 'Blue', 100);
  electricCar1.displayInfo();
  electricCar1.startEngine();
}