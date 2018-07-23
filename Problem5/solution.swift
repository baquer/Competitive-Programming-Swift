import Foundation

var count2: Float = 0
var count3: Float = 0
var count4: Float = 0
var count5: Float = 0
var array = 0
func plusMinus(arr: [Int]) -> Void {
    for i in arr {
        array = i
        count2 += 1
        if array > 0 {
            count3 += 1
        } else if array < 0 {
            count4 += 1
        } else {
            count5 += 1
        }
    }
    print(count3/count2)
    print(count4/count2)
    print(count5/count2)
    
}
guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
