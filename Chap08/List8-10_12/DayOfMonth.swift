class DayOfMonth {
    var month, day: Int
    init(month:Int, day:Int) {
        self.month = month; self.day = day
    }
    var description: String {
        return DayOfMonth.twoDigits(month)
            + "/" + DayOfMonth.twoDigits(day)
    }
    class func twoDigits(n:Int) -> String {
        let i = n % 100
        if (i < 10) { return "0\(i)" }
        return "\(i)"
    }
}
