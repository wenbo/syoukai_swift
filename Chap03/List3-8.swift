struct Time {
    var hour = 0, min = 0
    mutating func add(min:Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        }else{
            self.min = m
        }
    }
    mutating func inc() {
        self.add(1);
    }
    func description() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

var tm = Time(hour:19, min:40)
println(tm.description())
tm.add(19)
println(tm.description())
tm.inc()
println(tm.description())
