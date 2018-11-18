import UIKit

var str = "Hello, playground"

var array = [1,2,5,3,7,8,6,4]

func minimumBribes(q: [Int]) -> Void {
    
    var copiedArray = q.map { $0 }
    var numberOfBribes = 0
    
    for (index, element) in q.enumerated() {
        let shouldBeAt = element - 1
        let minimumPosition = shouldBeAt - 2
        if index < minimumPosition {
            print("Too chaotic")
            return
        }
    }
    
    mainLoop: while true {
        
        let currentCount = numberOfBribes
        
        for i in 0..<q.count-1 {
            if copiedArray[i] > copiedArray[i+1] {
                copiedArray.swapAt(i, i+1)
                numberOfBribes += 1
            }
            //means no more bribes were found and array is ordered
            if i == q.count-2 && currentCount == numberOfBribes {
                break mainLoop
            }
            
        }
        
    }
    
    //let numberOfBribes = organize(array: q, currentCount: 0)
    
    print(numberOfBribes)
    
}

minimumBribes(q: array)
