import UIKit

// constant--preffered
let a = true

// variable
var b = false

var c = 1.1

c = 2

let d = Int(c)

print(c, d)

// trouble ,cant change value type
//c = Int(c)

print(c)

// use Double when need do math or devide might be a trouble
var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

//likeCount = 5 + 1 // valid but bad practise
likeCount = likeCount + 1 // same
likeCount += 1 // -= *= /=

// pemdas
likeCount = (likeCount - 1 ) * 1.5 // it will do multiply first without ()
