enum ABC087: ABC {
    static func b() {
        let (a, b, c, x) = (readInt(), readInt(), readInt(), readInt())
        precondition([a, b, c].allSatisfy { 0 <= $0 && $0 <= 50 })
        precondition(a + b + c >= 1)
        precondition(50 <= x && x <= 20000)
        let array = (0...a).flatMap { a -> [Int] in
            (0...b).flatMap { b -> [Int] in
                (0...c).map { c -> Int in
                    500 * a + 100 * b + 50 * c
                }
            }
        }
        print(array.filter { $0 == x }.count)
    }
}
