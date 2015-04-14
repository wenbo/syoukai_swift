struct Time {
    var hour = 0, min = 0
    func addHour(hour:Int, min:Int) -> Time {
        let m = self.min + min
        let h = self.hour + hour + m / 60
        return Time(hour: h % 24, min: m % 60)
    }
    func description() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

let t1 = Time(hour:13, min:20)
let t2 = t1.addHour(9, min:25)
let t3 = t2.addHour(2, min:15)
println(t1.description())
println(t2.description())
println(t3.description())
