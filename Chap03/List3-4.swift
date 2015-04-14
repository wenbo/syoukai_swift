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

var a = Time(hour:10, min:30)      // 12時制 10:30
var b = Time(hourIn24: 15)         // 24時制 15:00
var c = Time(1)                    // 24時制 1:00
// var d = Time()                             // エラー
// var e = Time(in24h:true, hour:13, min:30)  // エラー
