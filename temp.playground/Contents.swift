
func findPalindrome(s:String) -> Bool {
    let newS = s.reversed()

    return String(newS) == s
}
findPalindrome(s: "8radar8")


typealias Student = (String, Int)

func findHighest(_ playerScores: Array<Student>) -> Student {
    var map = [String: (Int, Int)]()
    
    for (name, score) in playerScores {
        if let (sum, count) = map[name] {
            map[name] = (sum + score, count + 1)
        } else {
            map[name] = (score, 1)
        }
    }
    
    var bestPlayer: (String, Int)?
    var highAvg = 0
    
    for (name, (sum, count)) in map {
        let avg = sum / count
        if avg > highAvg {
            bestPlayer = (name, avg)
            highAvg = avg
        }
    }
    
    return bestPlayer!
}

findHighest([("playerA", 70), ("playerB", 80), ("playerC", 85), ("playerB", 100)])
