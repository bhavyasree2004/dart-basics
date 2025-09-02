class Bird with Flyer, Runner {}

class Fish with Swimmer {}

class Duck with Flyer, Runner, Swimmer {}

mixin Flyer {
  void fly() {
    print("I can fly!");
  }
}

mixin Swimmer {
  void swim() {
    print("i can swim!");
  }
}

mixin Runner {
  void run() {
    print("I can run!");
  }
}

void main(){
  Bird bird=Bird();
  print("Bird:");
  bird.fly();

  Fish fish=Fish();
  print("Fish: ");
  fish.swim();

  Duck duck=Duck();
  print("Duck: ");
  duck.fly();
  duck.swim();
  duck.run();
}
