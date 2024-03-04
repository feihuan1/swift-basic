//
//func findPalindrome(s:String) -> Bool {
//    let newS = s.reversed()
//
//    return String(newS) == s
//}
//findPalindrome(s: "8radar8")
//
//
//typealias Student = (String, Int)
//
//func findHighest(_ playerScores: Array<Student>) -> Student {
//    var map = [String: (Int, Int)]()
//    
//    for (name, score) in playerScores {
//        if let (sum, count) = map[name] {
//            map[name] = (sum + score, count + 1)
//        } else {
//            map[name] = (score, 1)
//        }
//    }
//    
//    var bestPlayer: (String, Int)?
//    var highAvg = 0
//    
//    for (name, (sum, count)) in map {
//        let avg = sum / count
//        if avg > highAvg {
//            bestPlayer = (name, avg)
//            highAvg = avg
//        }
//    }
//    
//    return bestPlayer!
//}

//findHighest(/*[("playerA", 70), ("playerB", 80), ("playerC", 85), ("playerB", 100)])*/


func longestLength (_ s: String) -> Int {
    var map = [Character: Int] ()
    var result = 0
    var startIndex = 0
    
    for (index, char) in s.enumerated() {
        if let lastIndex = map[char], lastIndex >= startIndex {
            startIndex = lastIndex + 1
        }
        map[char] = index
        result = max(result, index - startIndex + 1)
    }
    
    print(map)
    
    return result
}

let test = longestLength("abcabcb")
let test2 = longestLength("bbbbb")
let test3 = longestLength("vdf")
print(test, test2, test3)
