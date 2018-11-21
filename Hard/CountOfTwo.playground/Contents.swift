import UIKit

/*
 
 Find the number of number two from 0 to N
 
 Example: 25 -> 9
 
 (02, 12, 20, 21, 22, 23, 24, 25)
 
 */

func countOfTwo(n: Int) -> Int {
    
    var count = 0
    var m = 1
    var remaining = Int.max
    var digits = array(of: n)
    
    while remaining > 0 {
        
        remaining = n / (m * 10)
        
        var extra = 0
        
        let digit = digits.popLast()!
        
        if digit > 2 {
            extra = m
        } else if digit == 2 {
            extra = n % m + 1
        }
    
        count += remaining * m
        count += extra

        m *= 10
        
    }
    
    return count
}

func array(of n: Int) -> [Int] {
    let string = String(n)
    return Array(string).map { Int(String($0))! }
}

print(countOfTwo(n: 2))
print(countOfTwo(n: 22))
print(countOfTwo(n: 125))

