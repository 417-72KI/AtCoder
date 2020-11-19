import Foundation

let exams: [ABC.Type] = [
    Practice.self,
    ABC081.self,
    ABC083.self,
    ABC085.self,
    ABC086.self,
    ABC087.self,
    ABC088.self,
]

exams.enumerated()
    .forEach { print("\($0.offset): \($0.element.name)") }

var num = -1

while !(0..<exams.count).contains(num) {
    num = waitToReadInt()
}

let exam = exams[num]

print(exam.name)
loop: while true {
    print("Input: a, b, c")
    switch readLine() {
    case "a"?:
        print("\(exam.name)A")
        exam.a()
        break loop
    case "b"?:
        print("\(exam.name)B")
        exam.b()
        break loop
    case "c"?:
        print("\(exam.name)C")
        exam.c()
        break loop
    default:
        fputs("unexpected input.\n", stderr)
        continue
    }
}
