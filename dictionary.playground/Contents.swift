// dictionary is a collection type in swift, stores key-value paires, each value is associated with a uniq key

// init
var obj1: Dictionary<String, Int> = [:]// it's a "," not ":"

var obj2: [String:Int] = [:]

// with init value
var ages: [String: Int] = ["John": 30, "Alice": 25, "Bob": 35]

//---------------------------methods------------------

//accessing value

let johnsAge = ages["John"] //30

//modifying value

ages["Alice"] = 26

// add and remove value

ages["David"] = 40
ages.removeValue(forKey: "Bob")

//iterating Over

for (name, age) in ages {
    print(name, age)
}

// handle optional value
if let age = ages["John"] {
    print("John is \(age) years old")
}

// add or update value depends if the key is existing or not

obj1.updateValue(1, forKey: "a")

// remove all key value pair
obj1.removeAll()

//----------------------------properties---------

// return number of key vlue paires
let count = ages.count

//return array of all keys
let keys = ages.keys

// return array of all value
let values = ages.values

print(obj1, obj2, ages)
print(keys, values)

let obj3: [String: Any] = ["a":"z","b": 1]

let arr = obj3.values

print(obj3, arr)

