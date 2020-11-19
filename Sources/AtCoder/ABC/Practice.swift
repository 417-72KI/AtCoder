enum Practice: ABC {
    static func a() {
        let a = readInt()
        let bc = readIntArray()
        let s = readLine()!
        print(a + bc[0] + bc[1], s)
    }
}
