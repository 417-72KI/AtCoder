enum ABC085: ABC {
    static func b() {
        let n = readInt()
        precondition(1 <= n && n <= 100)
        let d = (0..<n).map { _ in readInt() }
        precondition(d.allSatisfy { 1 <= $0 && $0 <= 100})
        print(Set(d).count)

        // var set = [Int]()
        // for _ in 0..<n {
        //     let d = readInt()
        //     precondition(1 <= d && d <= 100)
        //     if !set.contains(d) {
        //         set.append(d)
        //     }
        // }
        // print(set.count)
    }
}
