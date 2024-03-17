import Foundation

// Classes are slower compaire to Struct(but aosl fast)
//classes are storeed in heap
// object in heap are reference type
// reference types points to an object in memory and update the object in mamory, every time change it, just change the value inside the class

// Structs are fast!
//Structs are stored in the stack(memory)
// Object in Stuct are Value types
// Value types are copied & mutated, everytime change a struct instance, it gets destroyed and re-created

// All the data needed for some screen
class ScreenViewModel {
    
    let title: String
    private(set) var showbButton: Bool // this make it only can change inside the lacc
    let dummy: String = "dummy" // wont need init if give it a default value
    
    // same init as a struct except struct has implicit init
    init(title: String, showbButton: Bool) {
        self.title = title
        self.showbButton = showbButton
    }
    
    deinit {
//        runs as the object removed from memory
        // structs do NOT have deinit
    }
    
    func updateShowButton (newValue: Bool) {
        showbButton = newValue
    }
    
}

//struct Screen {
//    // all data used in this screen should come from ScreenViewModel
//}

// can mark let and also be changed because its still the same object, value changed but its the same instance, same as javascript array and object
// we can change value in instance witout re-create the instence
let viewModel = ScreenViewModel(title: "Screen 1", showbButton: true)

//viewModel.showbButton = false // should make function inside the class cant change it outside because its private set in class
let value = viewModel.showbButton // can get from outside

viewModel.updateShowButton(newValue: true) // this is clean code and better practise, modify from inside
