import Foundation

var isGood = false

if isGood {
    print("good")
} else {
    print("not good")
    
}

if isGood == true {
    print("good")
} else if isGood == false {
    print("not good")
}

if !isGood {
    print("good")
} else {
    print("not good")
}


// use Double when need do math or devide might be a trouble
var likeCount: Double = 5
var commentCount: Double = 1
var viewCount: Double = 100

//likeCount = 5 + 1 // valid but bad practise
//likeCount = likeCount + 1 // same
//likeCount += 1 // -= *= /=
//
//// pemdas
//likeCount = (likeCount - 1 ) * 1.5 // it will do multiply first without ()

if likeCount == 5 {
    print("like count is 5")
} else {
    print ("like count is not 5")
}

if likeCount != 5 {
    print("like count is not 5")
}

if likeCount > 5 {
    print("like count is bigger tha 5")
}

if likeCount >= 5 {
    print("like count is no less than 5")
}// same with < <=

if likeCount > 3 && (commentCount > 0) { // () is optional
    print("like count is bigger than 3 andDDDDDD it has some comments")
} else {
    print("like count is less than 3 ORRRRRR theres no comments")
}


if likeCount > 3 || (commentCount > 0) { // () is optional
    print("like count is bigger than 3 ORRRRR it has some comments")
} else {
    print("like count is less than 3 andDDDDD theres no comments")
}

let d = true
let e = false

if d || e {
    print("one of then is true")
}
    //            either                    or
if (likeCount > 3 && commentCount > 0) || viewCount > 50 {
    print("good video")
}
