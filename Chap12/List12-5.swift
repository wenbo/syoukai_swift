class Person {
    let name: String
    init(_ s:String) { name = s }
    deinit { println("deinit \(name)") }
    func greet(msg:String) {
        println("\(msg), \(name)さん")
    }
}

var p: Person! = Person("夕子")
var clo: ((String)->())! = p.greet
p = nil
clo("こんばんは")
clo = nil
println("----All Over----")
