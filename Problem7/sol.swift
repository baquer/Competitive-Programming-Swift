import Foundation

// Complete the climbingLeaderboard function below.
var distinct:[Int] = [0]
var i = 0
var j = 0
var ans:[Int] = []
func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
    distinct = Array(Set(scores)).sorted().reversed()
    i = alice.count - 1
    j = 0
    while i >= 0 {
        if j >= distinct.count || distinct[j] <= alice[i] {
            ans.append(j+1)
            i -= 1
        } else {
            j += 1
        }
    }
    return ans.reversed()
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let scoresCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let scoresTemp = readLine() else { fatalError("Bad input") }
let scores: [Int] = scoresTemp.split(separator: " ").map {
    if let scoresItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return scoresItem
    } else { fatalError("Bad input") }
}

guard scores.count == scoresCount else { fatalError("Bad input") }

guard let aliceCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let aliceTemp = readLine() else { fatalError("Bad input") }
let alice: [Int] = aliceTemp.split(separator: " ").map {
    if let aliceItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return aliceItem
    } else { fatalError("Bad input") }
}

guard alice.count == aliceCount else { fatalError("Bad input") }

let result = climbingLeaderboard(scores: scores, alice: alice)

fileHandle.write(result.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

