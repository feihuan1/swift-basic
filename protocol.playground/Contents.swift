//a protocol is a blueprine that defines set of methods, properties or other requirement that a comforming type must implement
// protocal is just requirment, has lot variable or func in it but not implement them

import Foundation


// define
protocol Vehicle {
    // require a variable and specify its type and get set
    var name: String {get}
        // if get and set, has to be var in struct
    var currentPassengers: Int {get set}
    
    func estimateTime(distance: Int) -> Int
    
    func travel(distance: Int)
}

// MAKE TYPE work with protocal,(comforming to protocal)
// if remove the protocal, it gives same result
struct Car: Vehicle {
    
    let name = "Car"
    // has to be var cus its has settable in protocol
    var currentPassengers = 1
    // required by protocal
    func estimateTime(distance: Int) -> Int {
        distance / 50
    }
    // reqired by protocal
    func travel(distance: Int) {
        print("I'm driving \(distance) miles")
    }
    // optional
    func openSunroof () {
        print("It's a nice day")
    }
}
// struct can conform many protocals seperate by ","
struct Bicycle: Vehicle {
    let name = "Bike"
    var currentPassengers: Int = 2
    func estimateTime(distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) miales")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(distance: distance) > 100 {
        print("Thats too slow")
    } else {
        vehicle.travel(distance: distance)
        // if use Vehicle type, openSunroof not going to work
//        vehicle.openSunroof()
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(distance: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) miles")
    }
}

let car = Car()

commute(distance: 100, using: car)

let bike = Bicycle()

commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 200)


//Equatable

struct Student: Equatable{
    var name: String
    var marks: Double
    // static function is optional in struct, compair all property if not declared
    // static i required in class
//    static func == (lhs: Self, rhs: Self) -> Bool {
//        return lhs.marks == rhs.marks
//    }
}

let obj1 = Student(name:"Eric", marks: 90)
let obj2 = Student(name:"Eric1", marks: 90)

if(obj1 == obj2) {
    print("same")
} else {
    print("not same")
}

//Comparable !!!! it inherit by Equatable

class StudentClass: Comparable {
    static func == (lhs: StudentClass, rhs: StudentClass) -> Bool {
        return lhs.name == rhs.name && lhs.score == rhs.score
    }
    
    static func < (lhs: StudentClass, rhs: StudentClass) -> Bool {
        return lhs.score < rhs.score
    }
    
    var name: String
    var score: Double
    
    init(name: String, score: Double) {
        self.name = name
        self.score = score
    }
}

// Hashable get a hash value, be diferent everytime !! if all value is same, it will be same hash value, hasher function set how we want hash value set based on
struct StudentHash: Hashable {
    var name: String
    var score: Double
    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//    }
}

let stu1 = StudentHash(name: "alex", score: 20)
let stu2 = StudentHash(name: "alex", score: 30)

// set and dictionary has to be Hashable
var setHas = Set<StudentHash>()

print(stu1.hashValue)
print(stu2.hashValue)


// identifiable allow us add uniqness to a item in a collection
struct Person: Identifiable {
    let id = UUID() // identifiable require id id
    
    let firstName: String
    let lastName: String
}


