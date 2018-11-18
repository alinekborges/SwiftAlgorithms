import UIKit

//https://www.hackerrank.com/challenges/crush/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

let queries = [[2,6,8],[3,5,7],[1,8,1],[5,9,15]]

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    
    var array = Array.init(repeating: 0, count: n+1)
    
//    for i in 0..<n {
//        for j in 0..<queries.count {
//            if i >= (queries[j][0] - 1) && i <= (queries[j][1] - 1) {
//                array[i] += queries[j][2]
//            }
//        }
//    }
    
    queries.forEach { query in
        array[query[0]] += query[2]
        array[query[1]+1] -= query[2]
    }
    
    var max = 0
    var x = 0
    
    print(array)
    
    array.forEach { element in
        x += element
        if x > max { max = x }
    }
    
    return max
    
}

arrayManipulation(n: 10, queries: queries)
