enum ABC049: ABC {
    static func c() {
        let words = ["dream", "dreamer", "erase", "eraser"]
        let s = readLine()!
        precondition(1...100_000 ~= s.count)

        var t = s
        while let w = words.first(where: { t.hasSuffix($0) }) {
            t.removeLast(w.count)
        }
        print(t.isEmpty ? "YES" : "NO")
    }
}
