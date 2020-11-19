enum ABC086: ABC {
    static func a() {
        let ab = readIntArray()
        let (a, b) = (ab[0], ab[1])
        print(a & 1 == 1 && b & 1 == 1 ? "Odd" : "Even")
    }
}
