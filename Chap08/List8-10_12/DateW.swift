class DateW : Date {
    var dweek = String()
    override init(_ y:Int, _ m:Int, _ d:Int) {
        super.init(y, m, d)
        dweek = namesOfDay[dow]
    }
    convenience init(_ m: Int, _ d:Int, year:Int = 2014) {
        self.init(year, m, d)
    }
    override var day:Int {
        didSet {
            dow = dayOfWeek(month, day, year:year)
            dweek = namesOfDay[dow]
        }
    }
    override var description: String {
        return "\(year)/" + super.description + " (\(dweek))"
    }
}
