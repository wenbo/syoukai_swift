class Time {
    var hour = 0, min = 0
    init(hour:Int, min:Int) {
        self.hour = hour; self.min = min
    }
    func add(min:Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        }else{
            self.min = m
        }
    }
    func inc() {
        self.add(1);
    }
    func description() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

let t1 = Time(hour:13, min:20)
let t2 = t1
println(t1.description())   // 13:20 を出力
t1.inc()
println(t2.description())   // 13:21 を出力
