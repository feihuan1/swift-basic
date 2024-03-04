// Array is a ordered list of element
// initialize
var numbers: [Int] = [2,1,4,5,6,2,6,9,34,25]

var shopping: [String] = ["eggs", "milk"]

var threeDoubles = Array(repeating: 5.5, count: 3)

//print(threeDoubles)
// modify

shopping += ["meat"]

shopping.append("coke")

shopping.insert("drink", at: 1)

shopping.remove(at: 2) // return item removed and moddify array
//shopping.removeAll() // empty array

shopping.removeSubrange(0...1) // remove range index element from array

shopping.removeLast()

var num = shopping.count

//shopping[1] = "food"

shopping.contains("food")

//var dropped = shopping.dropFirst(2)// return new array

//var droppedLast = shopping.dropLast(2) // return new array

var first = shopping.first // return first element

shopping.last // return last element

shopping.insert("anserted", at: 1) // insert in certain index

shopping.startIndex

shopping.endIndex

shopping.reverse()

var joined = shopping.joined()
var joinedSeperator = shopping.joined(separator: " ")// return string seperated by seperator

shopping.min() // return optional smallest element , could be alphabet order, , use ! to force unwrap value

shopping.max()// return max element


print(shopping)
//loop

for item in shopping {
    print(item)
}

for (index, item) in shopping.enumerated() {
    print(index, item)
}

numbers.sort()
numbers.sort(by: >) // sort

numbers.count// length

numbers.swapAt(1,3) // swap 2 element by index

numbers.allSatisfy({$0 > 1})// check all element met condition $0 means first params

var sur = numbers.suffix(3)// make copy of surfix array

var pre = numbers.prefix(2)// return copy of prefix

var shu = numbers.shuffled()// make copy of shuffle array

numbers.isEmpty // check if its empty

var plus = numbers.map({$0 + 2}) // map through return new array

var fil = numbers.filter({$0 % 2 == 0}) // filter return a new array

print(numbers, fil)
