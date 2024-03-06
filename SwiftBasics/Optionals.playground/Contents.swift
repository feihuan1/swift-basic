import Foundation

// optional is a piece of data that may or may not have a value(nil)
// 4 way to unwrap a optional 1. nil coalescing 2. guard or guard let 3, if or if let, optional chain, force unwrapping (unsafe way)

// possible to be true or false
var yourBool: Bool = false

yourBool = true

//yourBool = nil // will complain

//==========================================================

// possible to be ture false or nil
var myBool: Bool? = false

myBool = nil // happy

myBool = true // happy

//print(myBool) // will be warning can use unwrapping to avoid

// nil coalescing operator
print(myBool ?? "its nothing") // print the string if it is a nil

//var hisBool: Bool = myBool // error because cant assing Bool to ooptional Bool
// use coalescing

var hisBool: Bool = myBool ?? true // wont conplain, meaning hisBool is the value of myBool if there is one or it will be true

let s: String? = "hello"
print(s ?? "hello")

//let s2: String = s // error even s has constant value, swift think it could be nil
let s3: String = s ?? "Hello"


//----------------------------------------------------------------------------exp
var userIspremium: Bool? = true

func checkIfuserIsPremium() -> Bool {
    //HACK::: if its one line in function, dont need write return swift know this is return value can us return too
    userIspremium ?? false// can be Bool
}

func checkIfuserIsPremium2() -> Bool? {
    userIspremium // has to be optional
}

let isPremium = checkIfuserIsPremium()
let isPremium2 = checkIfuserIsPremium2()

// if let else
func checkIfuserIsPremium3() -> Bool {
    // if userPremium ha value, let newValue = userIspremium
    if let newValue: Bool = userIspremium {
        // here is non-optional value
        return newValue
    } else {
        return false
    }
}

// if let
func checkIfuserIsPremium4() -> Bool {
    // if userPremium ha value, let newValue = userIspremium
    if let newValue: Bool = userIspremium {
        // here is non-optional value
        return newValue
    } 
    
    return false
    
}

// if let
func checkIfuserIsPremium5() -> Bool {
    // if userPremium has value, then return it
    if let userIspremium {// its referencing the userIsPremium in function not out side
        // here is non-optional value
        return userIspremium
    }
    return false
}

// guard
func checkIfuserIsPremium6() -> Bool {
    guard let newValue = userIspremium else {
        return false
    }
    
    return newValue
}
// guard
func checkIfuserIsPremium7() -> Bool {
    guard let userIspremium else {
        return false
    }
    
    return userIspremium
}

//==========================================================messing with it example
var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil


// if let 2.0
func checkIfUserIsSetup () -> Bool {
    // complain if not unwrap the params
//    getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
    
    // unwrap by creating 3 variable assign value to if if there is any value
    // could just check 3 original varible use let ..., let ..., let...{} then pass the oringinal variable in to getUserStatus
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie {
        // if userIsNew, didCompleteOnboarding and userFavorite has a string, then we do this
    return getUserStatus(
        userIsNew: isNew, 
        userDidCompleteOnboarding: didCompleteOnboarding,
        userFavoriteMovie: favoriteMovie
    )
    } else {
        // if any of them is nil, we do this
        return false
    }
}

// guard let 2.0
func checkIfUserIsSetup2 () -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {// could create 3 new variable and pass in getUserStatus too
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}


// func params should be non-optional, problem is variables are optional
func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}

//==================================use nested if let and guard let=======
// use your imagination
// pros is you can access unwrapped optional one by one
// con is bad looking and super messy
// nested guard is just guard one by one , its clear but if let nested is messy


//=========================optioanl chaining======================

func getUserName () -> String? {
    return "name"
}

func getTitle () -> String {
    return "title"
}

func getUserData () {
    
    let username = getUserName()
    // i will get count if username is not nil
    let nameCount: Int? = username?.count
    
    let title = getTitle()
    // will get count for sure
    let titleCount: Int = title.count
    
    // optioanl chaining!!!!!
    // if username is not nil and if first char is not nil means it's not empty, then tell me if its lowercase, otherwise return false
    // could be a long chain, this can avoid write long if let or guard let statement
    let firstLowerCased: Bool = username?.first?.isLowercase ?? false
    
    // force unwrpaaing / explicity unwrapping
    // means i know 10000% username has a value
    let nameCount2: Int = username!.count
}
