import Foundation

//
//var myItem Bool = false
//
//myItem = true


// chain function
func myFirstFun () {
    print("first")
    mySecondFun()
    myThirdFun()
}
// return void as default
func mySecondFun () {
    print("Second")
}
// return void as default
func myThirdFun () -> Void {
    print("Third")
}

myFirstFun()

// return some type
func getName() -> String {
    let name = "eric"
    
    return name
}

let name: String = getName()

//--------------------------- func params

showFirstScreen()


func showFirstScreen(){
    var userDidCompleteOnboardingL: Bool = false
    var  userProfileIsCreated: Bool = true
    // pass in params
   let result = checkUserStatus(didCompleteOnbording: userDidCompleteOnboardingL, profileIsCreatedL: userProfileIsCreated)
    
    if result {
        print("show Home Screen")
    } else {
        print("show onboarding")
    }
}// passing data through functions

//                        inside () is initializer
func checkUserStatus(didCompleteOnbording: Bool, profileIsCreatedL: Bool) -> Bool {
    if didCompleteOnbording && profileIsCreatedL {
        return true
    }
    return false
}

// ------------------------------cintrol flow

doSomething()

func doSomething () -> String {
    var title: String = "hey"
    
    // if title is hey then run closeure
    if title == "hey" {
        return "hey"
    }
    // will complain if not returning String if dont meet if condition
    return "not hey"
}

// ========guard statement
func doSomethingElse () -> String {
    var title: String = "hey"
    
    // if title is not hey, then run the closure
    guard title == "hey" else {
        return "not hey"
    }
    
    return "hey"
}

//-----------calculated variable are basicly like functions
// its good when you dont need pass data to the function

let num1 = 5
let num2 = 8
func calculateNumbers() -> Int {
    return num1 + num2
}

func calculateParams(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let res1 = calculateNumbers()
let res2 = calculateParams(value1: num1, value2: num2)

//!!!!!!! this is what freaking closure mean, function also can called closure
//In Swift, a closure is a concise block of code that can be passed around and executed later. It captures and stores references to variables and constants from its surrounding context, enabling functionality to be encapsulated and reused within a program.

var calculatedNum: Int {
    num1 + num2
}// use out side variable

print(num1)

var addClosure = {(a: Int, b: Int) -> Int in
       return a + b
}// pass number in to calculate

addClosure(1, 2)
addClosure(num1, num2)

//addClosure(a: 2, b: 3) qrong, closure dont support external params


