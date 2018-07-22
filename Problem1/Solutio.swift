import Foundation

var appleDistances = 0
var orangeDistances = 0
var d = 0
var e = 0
var count = 0
var count1 = 0
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    for i in apples {
        appleDistances = i
        if  appleDistances > 0 {
            d = (appleDistances + a)
            if d >= s && d <= t {
                count += 1
            }
        } else if appleDistances < 0 {
            d = (a + appleDistances)
        } else {
            print("none")
        }
    }
    for j in oranges {
        orangeDistances = j
        if orangeDistances > 0 {
            e = (orangeDistances + b)
        } else if orangeDistances < 0 {
            e = (b + orangeDistances)
            if e <= t && e >= s {
                count1 += 1
            }
        } else {
            print("none")
        }
    }
    print(count)
    print(count1)
}


guard let stTemp = readLine() else { fatalError("Bad input") }
let st = stTemp.split(separator: " ").map{ String($0) }

guard let s = Int(st[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let t = Int(st[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let abTemp = readLine() else { fatalError("Bad input") }
let ab = abTemp.split(separator: " ").map{ String($0) }

guard let a = Int(ab[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let b = Int(ab[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let mnTemp = readLine() else { fatalError("Bad input") }
let mn = mnTemp.split(separator: " ").map{ String($0) }

guard let m = Int(mn[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let n = Int(mn[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let applesTemp = readLine() else { fatalError("Bad input") }
let apples: [Int] = applesTemp.split(separator: " ").map {
    if let applesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return applesItem
    } else { fatalError("Bad input") }
}

guard apples.count == m else { fatalError("Bad input") }

guard let orangesTemp = readLine() else { fatalError("Bad input") }
let oranges: [Int] = orangesTemp.split(separator: " ").map {
    if let orangesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return orangesItem
    } else { fatalError("Bad input") }
}

guard oranges.count == n else { fatalError("Bad input") }

countApplesAndOranges(s: s, t: t, a: a, b: b, apples: apples, oranges: oranges)

