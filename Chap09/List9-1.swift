class Person {
    let name:String
    var age:Int
    init(name:String, age:Int) {
        self.name = name; self.age = age
    }
    func description() -> String {
        return "\(name), \(age)"
    }
    deinit {
        println("\(name): deinit")
    }
}

var yuta:Person! = Person(name:"勇太", age:16)
println(yuta.description())
var x:Person! = yuta
x.age++
println(yuta.description())

println(yuta === x)
yuta = nil
x = nil
