class Student {
    let name: String
    unowned var homeroom: HomeRoom
    init(name:String, homeroom:HomeRoom) {
        self.name = name
        self.homeroom = homeroom
        homeroom.add(self)
    }
    func description() -> String {
        return "\(name), \(homeroom.name)"
    }
    deinit { println("\(name): deinit") }
}

class HomeRoom {
    let name: String
    var members = [Student]()
    init(name:String) { self.name = name }
    func add(p:Student) { members.append(p) }
    deinit { println("HomeRoom \(name): deinit") }
}

var hr1: HomeRoom! = HomeRoom(name:"１年４組")
var yuta:Student! = Student(name:"勇太", homeroom:hr1)
println(yuta.description())

var hr2: HomeRoom! = HomeRoom(name:"２年４組")
yuta.homeroom = hr2
hr1 = nil
println(yuta.description())

yuta = nil
hr2 = nil
println("----All Over----")
