struct Time {
    let in24h: Bool = false   // 24時制 or 12時制
    var hour = 0, min = 0
}

var t = Time(in24h:true, hour:20, min:0)   // 午後8:00
let t2 = Time(in24h:true, hour:2, min:30)  // 午前2:30
