class Time12 : Time {
    var pm:Bool
    init(hour:Int, min:Int, pm:Bool) {
        self.pm = pm
        super.init(hour:hour, min:min)
    }
    override convenience init(hour:Int, min:Int) {
    // convenience override init(hour:Int, min:Int) {
        let isPm = hour >= 12
        self.init(hour:isPm ? hour - 12 : hour, min:min, pm:isPm)
    }
    override func add(min:Int) {
        super.add(min)
        while hour >= 12 {
            hour -= 12
            pm = !pm
        }
    }
    override func description() -> String {
        let s = super.description()
        return s + " " + (pm ? "PM" : "AM")
    }
}
