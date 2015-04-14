import Darwin

var buff = [Int8](count: 26, repeatedValue: 0)
var tnow:tm = tm(tm_sec:0, tm_min:0, tm_hour:0, tm_mday:0,
    tm_mon:0, tm_year:0, tm_wday:0, tm_yday:0, tm_isdst:0,
    tm_gmtoff: 0, tm_zone: nil)

var tt = [time_t()]         // time_t型の配列を作り、第１要素を初期化
time(&tt)                   // ここは & が必要。time(&tt[0]) でもよい。
localtime_r(tt, &tnow)      // ttでも &tt でも動作する。
                            // tnowは初期化が必要。&も必要。
println("\(tnow.tm_mon + 1)月\(tnow.tm_mday)日")
ctime_r(tt, &buff)          // &tt でもよい。buffは & が必要。
puts(buff)                  // &buffでもよい。
