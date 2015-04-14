import Darwin

var current: time_t = time(nil)
var tnow:tm = tm(tm_sec:0, tm_min:0, tm_hour:0, tm_mday:0,
    tm_mon:0, tm_year:0, tm_wday:0, tm_yday:0, tm_isdst:0,
    tm_gmtoff: 0, tm_zone: nil)     // 変数を用意して初期化
localtime_r(&current, &tnow)        // 変数tnowに情報が書き込まれる
println("\(tnow.tm_mon + 1)月\(tnow.tm_mday)日")  // 今日の日付を表示
