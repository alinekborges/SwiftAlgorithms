import UIKit

//https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

let array = [[1, 1, 1, 0, 0, 0],
             [0, 1, 0, 0, 0, 0],
             [1, 1, 1, 0, 0, 0],
             [0, 0, 2, 4, 4, 0],
             [0, 0, 0, 2, 0, 0],
             [0, 0, 1, 2, 4, 0]]

func hourglassSum(arr: [[Int]]) -> Int {
    
    var savedSum: [[Int]] = Array.init(repeating: Array.init(repeating: 0, count: 4), count: 6)
    
    var maxValue = Int.min
    
    for i in 0..<arr.count {
        let current = arr[i]
        for j in 0..<current.count-2 {
            savedSum[i][j] = current[j] + current [j+1] + current[j+2]
        }
    }
    
    for i in 0..<savedSum.count - 2 {
        let current = savedSum[i]
        for j in 0..<current.count {
            
            let sum = current[j] + savedSum[i+2][j] + arr[i+1][j+1]
            if sum > maxValue { maxValue = sum }
        }
    }
    
    return maxValue
    
}

let result = hourglassSum(arr: array)

print(result)
