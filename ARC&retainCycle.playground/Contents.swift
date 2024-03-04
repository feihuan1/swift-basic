//In Swift, a retain cycle occurs when two or more objects hold a strong reference to each other, preventing them from being deallocated by the memory management system. This typically happens when two objects have properties that reference each other strongly, creating a loop of strong references.
//
//To break this retain cycle, one of the references needs to be a weak or unowned reference.
//
//A weak reference allows the referencing object to become nil if the referenced object is deallocated. This prevents retain cycles because it doesn't keep a strong hold on the referenced object.
//
//An unowned reference assumes that the referenced object will always exist as long as the referencing object exists. However, if the referenced object is deallocated, accessing the unowned reference will lead to a runtime error (a crash), as it doesn't keep a strong hold and doesn't automatically become nil when the referenced object is deallocated.
//
//In short:
//
//Use weak references to break retain cycles when the referenced object can become nil.
//Use unowned references when you know the referenced object will outlive the referencing object, and you want to avoid optional unwrapping.

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) initialized")
    }
    
    deinit {
        print("\(name) deallocated")
    }
}

// Strong reference
class StrongReferenceExample {
    var person: Person
    
    init(person: Person) {
        self.person = person // Strongly holds a reference to a Person instance
        print("StrongReferenceExample initialized")
    }
    
    deinit {
        print("StrongReferenceExample deallocated")
    }
}

// Weak reference
class WeakReferenceExample {
    weak var person: Person? // Holds a weak reference to a Person instance
    
    init(person: Person) {
        self.person = person // Weakly holds a reference to a Person instance
        print("WeakReferenceExample initialized")
    }
    
    deinit {
        print("WeakReferenceExample deallocated")
    }
}

// Unowned reference
class UnownedReferenceExample {
    unowned let person: Person // Holds an unowned reference to a Person instance
    
    init(person: Person) {
        self.person = person // Unownedly holds a reference to a Person instance
        print("UnownedReferenceExample initialized")
    }
    
    deinit {
        print("UnownedReferenceExample deallocated")
    }
}

// Creating instances and testing references

// Strong reference
var john: Person? = Person(name: "John")
var strongExample: StrongReferenceExample? = StrongReferenceExample(person: john!)

// Weak reference
var jane: Person? = Person(name: "Jane")
var weakExample: WeakReferenceExample? = WeakReferenceExample(person: jane!)

// Unowned reference
var sam: Person? = Person(name: "Sam")
var unownedExample: UnownedReferenceExample? = UnownedReferenceExample(person: sam!)

// Deallocating instances
john = nil // When 'john' is set to nil, 'StrongReferenceExample' will still hold a strong reference to 'Person' instance 'john', preventing it from being deallocated.
strongExample = nil // 'StrongReferenceExample' instance deallocated here

jane = nil // When 'jane' is set to nil, 'WeakReferenceExample' will no longer hold a strong reference to 'Person' instance 'jane', allowing it to be deallocated.
weakExample = nil // 'WeakReferenceExample' instance deallocated here

sam = nil // 'UnownedReferenceExample' will still hold an unowned reference to 'Person' instance 'sam' even after it's set to nil.
unownedExample = nil // 'UnownedReferenceExample' instance deallocated here
