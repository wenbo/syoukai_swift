struct Date {
    var year, month, day: Int
    static let mons = ["Jan", "Feb", "Mar", "Apr", "May",
        "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    static var longFormat = false
    func twoDigits(n:Int) -> String {
        let i = n % 100
        return i < 10 ? "0\(i)" : "\(i)"
    }
    func description() -> String {
        if Date.longFormat {
            return "\(year)." + twoDigits(month)
                + "." + twoDigits(day)
        }
        return twoDigits(day)
            + Date.mons[month-1] + twoDigits(year)
    }
}

var a = Date(year:2002, month:5, day:20)
var b = Date(year:1990, month:10, day:3)
println(a.description())
println(b.description())
Date.longFormat = true
println(a.description())
println(b.description())
