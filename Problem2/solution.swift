import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {
    let maxHurdle = height.max()
    if k > maxHurdle! {
        return 0
    } else {
        return (maxHurdle! - k)
    }
}
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nkTemp = readLine() else { fatalError("Bad input") }
let nk = nkTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let heightTemp = readLine() else { fatalError("Bad input") }
let height: [Int] = heightTemp.split(separator: " ").map {
    if let heightItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return heightItem
    } else { fatalError("Bad input") }
}

guard height.count == n else { fatalError("Bad input") }

let result = hurdleRace(k: k, height: height)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

