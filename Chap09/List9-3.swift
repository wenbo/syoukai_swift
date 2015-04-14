class Student {
    let name: String
    var club: Club?
    init(name:String) { self.name = name }
    func description() -> String {
        var s = "\(name)"
        if let mem = club { s += ", \(mem.name)" }
        return s
    }
    deinit {
        println("\(name): deinit")
    }
}

class Club {
    let name: String
    var members = [Student]()
    init(name:String) { self.name = name }
    func add(p:Student) {
        members.append(p)
        p.club = self
    }
    deinit {
        println("Club \(name): deinit")
    }
}

var tinyClub: Club! = Club(name:"昼寝同好会")
var yuji:Student! = Student(name:"悠二")
tinyClub.add(yuji)
println(yuji.description())
yuji = nil
tinyClub = nil
