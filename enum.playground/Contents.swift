// enum is same as Struct except we know all the cases at runtime
//In Swift, an enum is a way to define a set of related values, typically used for representing a fixed set of options or states in your code.


// enum are stored in memory the same way as struct but we can't mutate them
enum CarBrandOption {
    case ford, toyota, honda // can define seperate line
    
    // func title return diferent string depends on case
    var title: String {
        switch self{
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

var fordBrand: CarBrandOption = .ford

print(fordBrand)
