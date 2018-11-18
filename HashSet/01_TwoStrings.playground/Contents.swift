import UIKit

var str = "hello"
var str2 = "world"

func twoStrings(s1: String, s2: String) -> String {
    
    let string1 = Array(s1)
    let string2 = Array(s2)
    
    var dict: [Character: Character] = [:]

    for i in 0..<string1.count {
        dict[string1[i]] = string1[i]
    }
    
    for i in 0..<string2.count {
        let substring = string2[i]
        if dict[substring] != nil { return "YES" }
    }
    
    return "NO"
    
}

twoStrings(s1: str, s2: str2)
