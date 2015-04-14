struct Date {
    var year, month, day: Int
    init() {
         year = 2095; month = 10; day = 31
    }  // self.year = 2095 のように書くこともできる
}

struct Time {
    let in24h: Bool = false         // 初期値は12時制
    var hour = 0, min = 0
    init(hour:Int, min:Int) {       // hour, min は外部引数名になる
        self.hour = hour            // self.プロパティで引数名と区別
        self.min = min
    }
    init(hourIn24 h:Int) {
        in24h = true                // 定数を初期設定できる
        hour = h
    }
    init(_ hour:Int) {              // 外部引数名を使わない
        self.init(hourIn24: hour)   // 上のイニシャライザを使う
    }
}

struct DateWithTime {
    var date = Date()
    var time = Time(hour:0, min:15)
}

var u = DateWithTime()
println(u.date.year)    // 2095が出力される
println(u.time.min)     // 15が出力される

