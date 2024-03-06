import Foundation


//a tuple is a data structure that groups together multiple values into a single compound value. It allows you to store different types of values in an ordered collection. Tuples are defined using parentheses and can contain any number of elements, each with its own type.

// access by dot notation use index or key
let myNamedTuple = (number: 1, text: "Hello", status: true)
print(myNamedTuple.number) // Accesses the first element (1)
print(myNamedTuple.text) // Accesses the second element ("Hello")
print(myNamedTuple.status) // Accesses the third element (true)
myNamedTuple.0 // return value of first element

let myTuple = (1, "Hello", true)
let firstElement = myTuple.0 // Accesses the first element (1)
let secondElement = myTuple.1 // Accesses the second element ("Hello")
let thirdElement = myTuple.2 // Accesses the third element (true)

var username: String = "eric"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUsername() -> String {
    return username
}

func getUserIsPremium() -> Bool {
    // swift know its return if only one line of code
    userIsPremium
}

// limited to return 1 type
func getUserInfo () -> String {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return name
}

// return tuple
func getUserInfo2 () -> (String, Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

getUserInfo2() // ("eric", false)

var userdata: String = username
var userdata2: (String, Bool, Bool) = (username, userIsPremium, userIsNew)

let info1 = getUserInfo2()
let name1: String = info1.0


// give param names
func getUserInfo3 () -> (name: String, isPremium: Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    // dont need specify param name in return value
    return (name, isPremium)
}

// can specify or not specify param name in type,
let info22: (String, Bool) = getUserInfo3()
let name22 = info22.0//cant access through name param if not specify in type
let info2: (name: String, isPremium: Bool) = getUserInfo3()
let name2: String = getUserInfo3().name

func getUserInfo4 () -> (name: String, isPremium: Bool, isNew: Bool) {
    return (username, userIsPremium, userIsNew)
}

func doSomethingWithUserinfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    
}

let info4 = getUserInfo4()

doSomethingWithUserinfo(info: info4)
