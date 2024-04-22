class Person {
    var name: String
    var age: Int
    var gender: Bool
    var height: Double
    var weight: Double
    var iq: Bool
    
    init(name: String, age: Int, gender: Bool,height: Double, weight: Double, iq: Bool) {
        self.name = name
        self.age = age
        self.gender = gender
        self.height = height
        self.weight = weight
        self.iq = true
    }
    
    func sleep() {
        print("\(name): Sleeping")
    }
    
    func eat(foodweight: Double) {
        weight = weight + foodweight
        print("\(name): Eating \(String(foodweight))kg of food")
        print("\(name) is " + String(weight) + "kg now")
    }
}

class Student: Person {
    var money: Int
    var department: String
    
    init(name: String, age: Int, gender: Bool, height: Double, weight: Double, iq: Bool, money: Int, department: String) {
        self.money = money
        self.department = department
        super.init(name: name, age: age, gender: gender, height: height, weight: weight, iq: iq)
    }
    
    func learn() {
        print("\(name) is learning at school")
        self.sleep()
    }
    
    func drink() {
        money -= 250
        print("\(name) is drinking")
        print("\(name) has \(String(money)) dollar left")

    }
    
    override func eat(foodweight: Double) {
        weight = weight + foodweight
        money -= Int(foodweight)*10
        print("\(name): Eating \(String(foodweight))kg of food")
        print("\(name) is " + String(weight) + "kg now")
        print("\(name) has \(String(money)) dollar left")

    }
    
    func spendmoney(cost: Int) {
        money -= cost
        print("\(name) has \(String(money)) dollar left")
    }
}

//var p = Person(name: "Harrison", age: 18, gender: true, height: 165, weight: 60, iq: true)
//
//p.sleep()
//p.sleep()
//
//var p1 = Person(name: "Jack", age: 18, gender: true, height: 178, weight: 85, iq: false)
//
//p1.sleep()
//p1.eat(foodweight: 2.53)
//p.eat(foodweight: 1.5)
//
//
//var s = Student(name: "Harrison Lee", age: 18, gender: true, height: 165, weight: 60, iq: true, money: 10000, department: "MDID")
//s.department = "ISTM"
//s.learn()
//s.spendmoney(cost: 100)
//s.sleep()
//s.eat(foodweight: 10)


class Car {
    var color: String
    var brand: String
    var distance_drove: Int
    var speed_x: Int
    var speed_y: Int
    var position_x: Int
    var position_y: Int
    var passenger_num: Int
    var driver: String
    
    init(color: String, brand: String, dd: Int, speed_x: Int, speed_y: Int, position_x: Int, position_y: Int, passenger_num: Int, driver: String) {
        self.color = "space grey"
        self.brand = brand
        self.distance_drove = dd
        self.speed_x = speed_x
        self.speed_y = speed_y
        self.position_x = 0
        self.position_y = 0
        self.passenger_num = passenger_num
        self.driver = driver
    }
    
    func gas_pedal(time: Int) {
        let acceleration_x = 1
        let acceleration_y = 1
        position_x = position_x + speed_x*time + acceleration_x*time*time/2
        position_y = position_y + speed_y*time + acceleration_y*time*time/2
        print("the car is at (\(position_x),\(position_y))")
        self.speed_x = acceleration_x*time
        self.speed_y = acceleration_y*time
        return ;self.speed_x ;self.speed_y
    }
    
    func brake_pedal(time: Int) {
        let acceleration_x = -1
        let acceleration_y = -1
        position_x = position_x + speed_x*time + acceleration_x*time*time/2
        position_y = position_y + speed_y*time + acceleration_y*time*time/2
        print("the car is at (\(position_x),\(position_y))")
        self.speed_x = acceleration_x*time
        self.speed_y = acceleration_y*time
        return ;self.speed_x ;self.speed_y
    }
    
}
