struct Time {
    let hour = 0, min = 0
    private func add(min:Int) -> Time {
        var m = self.min + min
        var h = self.hour
        if m >= 60 {
            h = (h + m / 60) % 24
            m %= 60
        }
        return Time(hour:h, min:m)
    }
    private func diff(tm:Time) -> Int {
        var mm = hour * 60 + min
        let t = tm.hour * 60 + tm.min
        if (mm < t) { mm += 24 * 60 }
        return mm - t
    }
    var description : String {
        let h = hour < 10 ? "0\(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

func + (tm:Time, inc:Int) -> Time {
    return tm.add(inc)
}
func - (t1:Time, t2:Time) -> Int {
    return t1.diff(t2)
}
prefix func ++ (inout tm:Time) -> Time {
    tm = tm.add(1)
    return tm
}
postfix func ++ (inout tm:Time) -> Time {
    let newone = tm
    tm = tm.add(1)
    return newone
}
func += (inout tm:Time, inc:Int) {
    tm = tm.add(inc)
}

let tm = Time(hour:21, min:45)
println(tm.description)
let m = tm + 250 - Time(hour:23, min:0)
println("\(m) min.")
var t = Time(hour:20, min:34)
t += 25
println(t.description)
println(t++.description)
println((++t).description)
