struct Time {
    let in24h: Bool = false
    var hour = 0, min = 0
    init(hour:Int, min:Int) {
        self.hour = hour
        self.min = min
    }
    init(hourIn24 h:Int) {
        in24h = true
        hour = h
    }
    init(_ hour:Int) {
        self.init(hourIn24: hour)
    }
}

struct DateWithTime {
    struct Date { var year, month, day: Int }    // ネスト型
    typealias LocalTime = Time                   // 別名を定義
    var date: Date
    var time: LocalTime
    init(year:Int, month:Int, day:Int, hour:Int, min:Int) {
        date = Date(year:year, month:month, day:day)
        time = LocalTime(hour:hour, min:min)
    }
}

// 2024年11月7日14時55分
var a = DateWithTime(year:2024, month:11, day:7, hour:14, min:55)
println(a.date.month)
println(a.time.min)

var b = DateWithTime.Date(year:2022, month:11, day:6) // ネスト型
println(b.year)

var c = DateWithTime.LocalTime(hour:10, min:21)       // ネスト型
println(c.hour)
