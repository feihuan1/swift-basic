import Foundation

//Arrays, Set

var mytitle: String = "Hello World!!"
var mytitle2: String = "Hello World!!"

//Tiple

func doSomething (value: (title1: String, title2: String)) {
    
}

doSomething(value: (mytitle, mytitle2))

// Custom data Model

struct titleModel {
    let title1: String
    let title2: String
}

func doSomething2(value: titleModel) {
    
}

doSomething2(value: titleModel(title1: mytitle, title2: mytitle2))

// ------------------------------
let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String>  = [apple, orange]

func doSomething3 (value: [String]) {
    
}

doSomething3(value: fruits)

var fruitsArray: [String] = ["Apple", "Orange"]

let count = fruitsArray.count

let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {// might be nil
    // do something
}

fruitsArray = fruitsArray + ["Bababa"]

fruitsArray.append("Mango")

fruitsArray.append(contentsOf: ["Pear", "lychi"])

fruitsArray.insert("Watermelon", at: 2)

fruitsArray.insert(contentsOf: ["11", "22"], at: 3)

fruitsArray.remove(at: 1)
//fruitsArray.remove(at: 100) // crash the app

if fruitsArray.indices.contains(100) {
    fruitsArray.remove(at: 100)
}

fruitsArray.removeAll()

print(fruitsArray)

//fruitsArray[1]
//fruitsArray[100] // crash the app. no undefined type in swift

// avoid access inde not exist

if fruitsArray.indices.contains(100) {
    let item = fruitsArray[100]
}

fruitsArray.indices.first // 0
fruitsArray.indices.last // 5


struct PruductModel {
    let title: String
    let price: Int
}
var myProducts: [PruductModel] = [
        PruductModel(title: "product1", price: 26),
        PruductModel(title: "product2", price: 22),
        PruductModel(title: "product3", price: 21),
        PruductModel(title: "product4", price: 23),
        PruductModel(title: "product5", price: 32),
        PruductModel(title: "product6", price: 21),
        PruductModel(title: "product7", price: 24),
        PruductModel(title: "product8", price: 12),
        PruductModel(title: "product9", price: 22),
    ]

let finalFruits: [String] = ["Apple", "Orange", "Apple"]
let finalFruitsSet: Set<String> = ["Apple", "Orange", "Apple"] // no duplicate
print(finalFruits)
print(finalFruitsSet)
