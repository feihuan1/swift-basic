import UIKit

// singleton in a cinstance of a class that can be only created once and can be accessed globlely throughout code base, ususlly used in URL session, user default and filemanager also user default payment
// pros are uniq (vital to consider if want use only once) and convient (also con)
// cons can be access globlly, testing is hard, seperation of concern, use dependency injection will solve it better than accecing directly from file

// how to create
final class MySingleton {
    // only instance
    static let shared = MySingleton()
    
    // initialize privately, this guarentee can create instence outside of class
    private init(){}
    
    func doSomething(){
        // access userDefault or file manager
        UserDefaults.standard.set(false, forKey: "isFirstUse")
        }
}

MySingleton.shared.doSomething()
