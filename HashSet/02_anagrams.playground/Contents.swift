import UIKit

//https://www.hackerrank.com/challenges/sherlock-and-anagrams/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps&h_r=next-challenge&h_v=zen

let string = "ifailuhkqq"

func sherlockAndAnagrams(s: String) -> Int {
    
    typealias Position = (start: Int, end: Int)
    
    let duplicates = findDuplicates(in: s)
    
    var substrings:[[String:Any]] = [[:]]
    
    var string = Array(s)
    
    duplicates.forEach { char in
        
        let index = string.index(of: char)!
        
        for i in 0..<index {
            
        }
        
    }
    
    return 0
}

func findDuplicates(in string: String) -> [Character] {
    var dict: [Character: Int] = [:]
    let s = Array(string)
    for i in 0..<s.count {
        if dict[s[i]] == nil { dict[s[i]] = 0 }
        dict[s[i]]! += 1
    }
    
    return Array(dict.filter { $1 > 1 }.keys)
    
}

let result = sherlockAndAnagrams(s: string)
print(result)


