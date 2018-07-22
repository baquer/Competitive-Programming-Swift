import Foundation

var sum: Int = 0
var minSum = 0
var maxSum = 0
func miniMaxSum(arr: [Int]) -> Void {
    for i in arr {
        sum = sum + i
    }
    minSum = sum - arr.max()!
    maxSum = sum - arr.min()!
    print( minSum , maxSum)
}

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
