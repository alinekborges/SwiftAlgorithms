import UIKit


//https://www.hackerrank.com/challenges/fraudulent-activity-notifications/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=sorting

func activityNotifications(expenditure: [Int], d: Int) -> Int {

    var count = 0
    
    var medianArray: [Int] = []
    
    //Adds first values to median Array
    for i in 0..<d {
        medianArray.append(expenditure[i])
    }
    
    medianArray.sort()
    
    for i in d..<expenditure.count {
        
        let m = maxSpent(forArray: medianArray, count: d)
        
        
        
        if expenditure[i] >= m {
            count += 1
        }
        
        medianArray = update(array: medianArray, insert: expenditure[i-1], remove: expenditure[i-d])
        
    }
    
    return count
    
}

func update(array: [Int], insert: Int, remove: Int) -> [Int] {
    
    var arr = array
    
    if let position = array.index(of: remove) {
        arr.remove(at: position)
    }
    
    for i in 0..<arr.count {
        if arr[i] >= insert {
            arr.insert(insert, at: i)
            return arr
        }
    }
    
    //if we got to here, add to the end of the list
    arr.append(insert)
    return arr
    
}

func maxSpent(forArray array: [Int], count: Int) -> Int {
    
    if count % 2 != 0 {
        return array[count/2] * 2
    } else {
        return (array[count/2] + array[count/2 - 1])
    }
}

let array = [1, 2, 3, 4, 4]
let d = 4

let result = activityNotifications(expenditure: array, d: d)

print(result)

let i = 3
let a = 3 / 2

