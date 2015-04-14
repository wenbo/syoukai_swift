class Date : Printable {
    var year: Int?
    var mon, day: Int
    init(_ m:Int, _ d:Int, year:Int? = nil) {
        mon = m; day = d; self.year = year
    }
    func TwoDigit(n:Int) -> String {
        return n < 10 ? "0\(n)" : "\(n)"
    }
    var description: String {
        var s = ""
        if let y = year { s = "\(y)/" }
        return s + TwoDigit(mon) + "/" + TwoDigit(day)
    }
}

enum Sex : Printable {
    case Male, Female
    var description: String {
        switch self {
        case Male: return "男"
        case Female: return "女"
        }
    }
}

struct Person : Printable {
    let name: String
    let sex: Sex
    let birth: Date
    let description: String
    init(name:String, sex:Sex, birth:Date) {
        self.name = name; self.sex = sex; self.birth = birth
        description = name + "(\(sex)) \(birth)"
    }
}

let ko = Person(name:"康一", sex:.Male, birth:Date(3,28,year:1984))
let ma = Person(name:"麻子", sex:.Female, birth:Date(9,1))
println(ko)
println(ma)
