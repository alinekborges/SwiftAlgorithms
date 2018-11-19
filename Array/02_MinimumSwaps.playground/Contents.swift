import UIKit

var str = "Hello, playground"

let array = [7, 1, 3, 2, 4, 5, 6]

func minimumSwaps(arr: [Int]) -> Int {
    
    var count = 0
    
    var array = arr.map { $0 }
    
    for i in 0..<array.count {
        
        var element = array[i]
        
        while element != i + 1 {
            array.swapAt(i, element-1)
            element = array[i]
            count += 1
        }
        
    }
    
    return count
    
}

let result = minimumSwaps(arr: array)

print(result)

func getCurrentAppVersion() -> String {
    guard let dic = Bundle.main.infoDictionary, let version = dic["CFBundleShortVersionString"] as? String else {
        return ""
    }
    return version
}

func getCurrentBuildVersion() -> String {
    guard let dic = Bundle.main.infoDictionary, let version = dic["CFBundleVersion"] as? String else {
        return ""
    }
    return version
}

func getCurrentOsVersion() -> String {
    return UIDevice.current.systemVersion
}

func getModelName() -> String {
    return UIDevice.current.model
}

func getUserAgent() -> String {
    return "CONGO/\(getCurrentBuildVersion()) (iOS;iOS \(getCurrentOsVersion());iOS \(getCurrentOsVersion());iOS \(getModelName());iOS \(getModelName()))"
}

print(getUserAgent())
