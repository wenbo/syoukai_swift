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

var kaz:Student! = Student(name:"一美")
weak var who: Student? = kaz
println(who!.description())
kaz = nil
println(who)

weak var yukari:Student? = Student(name:"ゆかり")
println("---All Over---")
