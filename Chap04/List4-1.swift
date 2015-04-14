struct Time {
    let in24h: Bool = false
    var hour = 0, min = 0
    init() { }
    init?(_ h:Int, _ m:Int, in24h:Bool = false) {
        let maxh = in24h ? 23 : 11
        if h < 0 || h > maxh || m < 0 || m > 59 {
            return nil
        }
        self.in24h = in24h
        hour = h
        min = m
    }
    init(time:Time, in24h:Bool) {
        var h = time.hour
        if !in24h && time.hour > 11 {
            h -= 12
        }
        self.in24h = in24h
        hour = h
        min = time.min
    }
}

func mins(m:Int) -> String {
    return m < 10 ? "0\(m)" : "\(m)"
}
if let w = Time(22, 10, in24h:true) {
    println("\(w.hour):\(mins(w.min))")      // 22:10 と表示
}

// var u:Time = Time(23, 40)!
// println(" \(u.hour):\(mins(u.min))" + (u.in24h ? " (24)" : " (12)"))
var u = Time()
println(" \(u.hour):\(mins(u.min))" + (u.in24h ? " (24)" : " (12)"))

var t:Time? = Time(20, 0, in24h:true)
println("\(t!.hour):\(mins(t!.min))" + (t!.in24h ? " (24)" : " (12)"))
u = Time(time:t!, in24h:false)
println(" \(u.hour):\(mins(u.min))" + (u.in24h ? " (24)" : " (12)"))
