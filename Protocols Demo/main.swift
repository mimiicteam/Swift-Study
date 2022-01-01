protocol CanFly {
  func fly()
}

class Bird {
  var isFemale = true

  func layEgg() {
    if isFemale {
      print("The Bird makes a new bird in a shell")
    }
  }
}

class Eagle: Bird, CanFly {

  func fly() {
    print("The Eagle flaps its wings and lifts off into the sky.")
  }
    func soar() {
      print("The Eagle glides in the air using air currents.")
    }
 }

class Penguin: Bird {
    func swim() {
      print("The Penguin paddles through the water.")
    }
}

struct FlyMuseum {
    func flyingDemo(flyingObject: CanFly) {
      flyingObject.fly()
    }
}

struct Airplane: CanFly {
  func fly() {
    print("The Airplane uses its engine to li off into the air.")
  }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyMuseum()

myEagle.fly()
myPenguin.swim()
myPlane.fly()

museum.flyingDemo(flyingObject: myPlane)