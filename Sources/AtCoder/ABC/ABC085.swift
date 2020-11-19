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

    static func c() {
        let NY = readIntArray()
        let (N, Y) = (NY[0], NY[1])
        precondition(1 <= N && N <= 2000)
        precondition(1000 <= Y && Y <= 20_000_000)
        precondition(Y % 1000 == 0)

        func exec(N: Int, Y: Int) -> (x: Int, y: Int, z: Int) {
            let Y = Y / 1000
            switch Y {
            case N:
                return (0, 0, N)
            case 5 * N:
                return (0, N, 0)
            case 10 * N:
                return (N, 0, 0)
            default:
                break
            }

            for x in 0...N {
                for y in 0...(N-x) {
                    let z = N - x - y
                    if Y == 10 * x + 5 * y + z {
                        return (x, y, z)
                    }
                }
            }

            return (-1, -1, -1)
        }

        let (x, y, z) = exec(N: N, Y: Y)
        print(x, y, z)
    }
}
