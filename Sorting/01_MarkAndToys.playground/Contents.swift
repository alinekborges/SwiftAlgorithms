import UIKit

//https://www.hackerrank.com/challenges/mark-and-toys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=sorting

let amount = 50
let array = [10, 200, 5, 12, 47, 22, 56] //they sum up to 49 - 4 items

// Complete the maximumToys function below.
func maximumToys(prices: [Int], k: Int) -> Int {
    
    let sorted = prices.sorted()
    
    var value = 0
    var count = 0
    
    for i in 0..<sorted.count {
        let v = sorted[i]
        
        if value + v > k {
            break
        }
        
        value += v
        count += 1
    }
    
    return count
}

let result = maximumToys(prices: array, k: amount)
