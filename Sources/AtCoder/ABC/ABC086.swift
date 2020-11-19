enum ABC086: ABC {
    static func a() {
        let ab = readIntArray()
        let (a, b) = (ab[0], ab[1])
        print(a & 1 == 1 && b & 1 == 1 ? "Odd" : "Even")
    }

    static func c() {
        let n = readInt()
        precondition(1...10_000 ~= n)
        let plan: [(t: Int, x: Int, y: Int)] = (0..<n)
            .map { _ in
                let arr = readIntArray()
                return (arr[0], arr[1], arr[2])
            }
        precondition(plan.allSatisfy { 0...10_000 ~= $0.x && 0...10_000 ~= $0.y && 1...10_000 ~= $0.t })
        let ts = plan.map(\.t)
        precondition(ts.indices.dropLast().allSatisfy { ts[$0] < ts[$0 + 1] })

        func validate(plan: [(t: Int, x: Int, y: Int)]) -> Bool {
            var record = (t: 0, x: 0, y: 0)
            for p in plan {
                let dt = p.t - record.t
                let dx = abs(p.x - record.x)
                let dy = abs(p.y - record.y)
                guard dx + dy <= dt else { return false }
                guard (dx + dy) & 1 == dt & 1 else { return false }
                record = p
            }
            return true
        }

        print(validate(plan: plan) ? "Yes" : "No")
    }
}
