import Foundation

func readInt() -> Int {
    Int(readLine()!)!
}

func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int($0)! }
}

func waitToReadInt() -> Int {
    while true {
        guard let value = readLine().flatMap(Int.init) else {
            fputs("input number\n", stderr)
            continue
        }
        return value
    }
}
