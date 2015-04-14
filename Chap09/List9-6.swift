class Student {
    let name: String
    weak var club: Club?
    init(name:String) { self.name = name }
}

class Teacher {
    let name: String
    var subject: String? = nil
    init(name:String) { self.name = name }
}

class Club {
    let name: String
    weak var teacher: Teacher?
    var budget = 0
    var members = [Student]()
    init(name:String) { self.name = name }
    func add(p:Student) {
        members.append(p)
        p.club = self
    }
    func legal() -> Bool {
        return members.count >= 5 && teacher != nil
    }
}

var who:Student? = Student(name:"井上")
var club = Club(name:"隣人部")
club.add(who!)
var t = Teacher(name:"高山")
t.subject = "精神発達理論"
club.teacher = t

if who != nil {
    if who!.club != nil {
        if who!.club!.teacher != nil {
            print("[1] ")
            println(who!.club!.teacher!.name)
        }
    }
}
if let w = who {
    if let club = w.club {
        if let tc = club.teacher {
            print("[2] ")
            println(tc.name)
        }
    }
}

if let name = who?.club?.teacher?.name {
    print("[3] ")
    println(name)
}

var StudentCouncil = [String:Student]()         // 生徒会の役員
StudentCouncil["会長"] = Student(name:"日高")

if let name = StudentCouncil["常任委員"]?.name {
    println("常任委員: " + name)
}else {
    println("常任委員(空席)")
}

if var b = who?.club?.budget {
    println("予算: \(b)")
}
if let recognized = who?.club?.legal() {
    println("クラブ: " + (recognized ? "公認" : "非公認"))
}else {
    println("クラブ自体がない")
}
if let subj = who?.club?.teacher?.subject {
    println("担当教科: \(subj)")
}
