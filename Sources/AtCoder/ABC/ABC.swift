protocol ABC {
    static func a()
    static func b()
    static func c()
}

extension ABC {
    static func a() {}
    static func b() {}
    static func c() {}
}

extension ABC {
    static var name: String { "\(self)" }

    static var allCases: (a: () -> Void, b: () -> Void, c: () -> Void) {
        (a, b, c)
    }
}
