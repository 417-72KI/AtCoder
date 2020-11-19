enum ABC088: ABC {
    static func b() {
        let (n, a) = (readInt(), readIntArray())
        precondition(n == a.count)

        let cards = a.sorted(by: >).enumerated()
        let alice = cards.filter { $0.offset & 1 == 0 }.map(\.element)
        let bob = cards.filter { $0.offset & 1 == 1 }.map(\.element)
        print(alice.reduce(0, +) - bob.reduce(0, +))
    }
}
