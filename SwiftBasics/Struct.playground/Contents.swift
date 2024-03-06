import Foundation

// Structs are fast!
//Structs are stored in the stack(memory)
// Object in Stuct are Value types
// Value types are copied & mutated

struct Quiz {
    let title: String
    let dateCreate: Date
    let isPremium: Bool?
    
    // Structs has implicit init
    
    // or we can create init, swift auto generates this function wiout we write it
//    init(title: String, dateCreate: Date) {
//        self.title = title
//        self.dateCreate = dateCreate
//    }
    //                                      default value like JS
//    init(title: String = "yoo", dateCreate: Date = .now) {
//        self.title = title
//        self.dateCreate = dateCreate
//    }
    
    init(title: String = "yoo", dateCreate: Date?, isPremium: Bool? ) {
        self.title = title
        self.dateCreate = dateCreate ?? .now
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello World"

let myQuiz = Quiz(title: "Quiz 1", dateCreate: .now, isPremium: true)

// push option key to generate all params
//let myQuiz2 = Quiz()

print(myQuiz.title)// where does it come from? theres no function return it, because struct has implicit init, this instance's value is from the initializer of the stuct

//---------------------------------------same way modify with approach 2

// immutable struct = all "let" constant = not mutable = can not mutate it
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Nick", isPremium: false)

//user1.isPremium = true // will be error because struct declare it as let

func markUserAspremium() {
    print(user1)
//    we recreate new user1 using existing data except ispremium
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

markUserAspremium()

//---------------------------------------same way modify with approach 1

    // mutable struct
struct UserModel2 {
    let name: String
    var isPremium: Bool // var make it mutable
    
}

var user2: UserModel2 = UserModel2(name: "eric", isPremium: false)

func markUserAsPremium2 () {
    print(user2)
    // mutate the struct , its same as creating a new stuct, becuase value type make a copy when mutating it
    user2.isPremium = true
    print(user2)
}

markUserAsPremium2()

//--------best  practise here, begginer choice-------------easy to understand----------------------both make new data model
// immutable struct
// this is better practise because the sruct in charge to change its own data
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {// return this struct
        UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Eric", isPremium: false)
print(user3)
user3 = user3.markUserAsPremium(newValue: true)
print(user3)

//-----best practise advanced choice-------------------less code easi to read hard to understand ----------------both make new data model

// mutable struct
struct UserModel4 {
    let name: String
//   we can only mutating inside the struct by mark private set
    private(set) var isPremium: Bool
    
    mutating func updateIsPremium (newValue: Bool) {
        isPremium = newValue
    }
}


struct User5 {// carry same data but better than tuple to pass around
    let name: String
    let isPremium: Bool
    let isNew: Bool
    //.....
}
