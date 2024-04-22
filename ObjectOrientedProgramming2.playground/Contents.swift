protocol CanSay {
    func say()
}
//protocol CanHit {
//    func hit()
//}
class Person: CanSay {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func say() {
        print(self.name)
    }
    
    var money: Int = 100 {
        willSet {
            print(newValue)
            print(money)
        }
        didSet {
            if money < 0 {
                money = 0
            }
        }
    }
}

class Apple: CanSay {
    func say() {
        print("Apple")
    }
}

//var c: CanSay = Person()
//c.say()
//var p = Person()
//p.money = -100
//p.say()
//print(p.money)

//var a = [Person]()
//a.append(Apple())

var arr = [CanSay]()

arr.append(Person(name: "Harrison"))
arr.append(Apple())
arr.append(Person(name: "Jack"))
arr.append(Apple())

for i in arr {
    i.say()
}
