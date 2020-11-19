enum ABC081: ABC {
    static func b() {
        let n = readInt()
        precondition(1 <= n && n <= 200)

        var an = readIntArray()
        precondition(n == an.count)
        precondition(an.allSatisfy { 1 <= $0 && $0 <= 1_000_000_000 })

        var result = 0
        while an.allSatisfy({ $0 & 1 == 0 }) {
            an = an.map { $0 >> 1 }
            result += 1
        }
        print(result)
    }
}
