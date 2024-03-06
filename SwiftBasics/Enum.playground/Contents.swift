import Foundation

// enum vs struct: almost samething but 
//!!!!enum know all the possible value of data at run time and list all cases(local data we already know) //
//!!! struct only know and define the type(fetch data from api)
// if we can use enum, use a enum instead of struct

enum CarModel {
    //                             default
    case ford, toyota, honda, somethingelse // can define seperate line, these are the 3 cases
    
  
    var title: String { // this is the only property this enum has!!!
        switch self{// these tells witch value to return in each case
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
        default:
            return "Default"
        }
    }
}

var fordBrand: CarModel = .ford

print(fordBrand.title) // return title "Ford"
print(fordBrand)// return case ford
print(type(of: fordBrand)) // CarModle
print(type(of: fordBrand.title)) // String


