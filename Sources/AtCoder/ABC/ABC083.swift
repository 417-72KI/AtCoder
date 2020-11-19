enum ABC083: ABC {
    static func b() {
        func sumDigits(_ n: Int) -> Int {
            String(n).map { $0.wholeNumberValue! }.reduce(0, +)
        }

        let nab = readIntArray()
        let (n, a, b) = (nab[0], nab[1], nab[2])
        let result = (1...n).filter { a...b ~= sumDigits($0) }.reduce(0, +)
        print(result)
    }
}
