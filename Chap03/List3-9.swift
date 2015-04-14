struct Date {
    var year, month, day: Int
    static func isLeap(y: Int) -> Bool {
        return (y % 4 == 0) && (y % 100 != 0 || y % 400 == 0)
    }
    static func daysOfMonth(m:Int, year:Int) -> Int {
        switch m {
        case 2:
//          return self.isLeap(year) ? 29 : 28 // selfはなくてもよい
            return isLeap(year) ? 29 : 28
        case 4, 6, 9, 11: return 30
        default: return 31
        }
    }
}

println(Date.isLeap(2000))
println(Date.isLeap(2002))
println(Date.isLeap(2008))
println(Date.isLeap(1900))

println(Date.daysOfMonth(2, year:2000))
