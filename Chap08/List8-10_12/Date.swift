let namesOfDay = [ "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" ]
func dayOfWeek(var m:Int, let d:Int, var year y:Int) -> Int {
    if m < 3 {
        m += 12; --y
    }
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

class Date : DayOfMonth {
    var year: Int
    var dow: Int
    init(_ y:Int, _ m:Int, _ d:Int) {
        year = y
        dow = dayOfWeek(m, d, year:y)
        super.init(month:m, day:d)
    }
}
