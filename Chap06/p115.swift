func dayOfWeek(var m:Int, let d:Int, var year y:Int = 2015) -> Int {
    if m < 3 {
        m += 12; --y
    }
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

for day in [ (1, 12), (2, 3), (3, 22), (8, 31) ] {

switch day {
case (1, let d) where d >= 8 && d <= 14 && dayOfWeek(1, d) == 1:
    println("成人の日")
case (8, _): println("夏休み")
case (let m, let d) where dayOfWeek(m, d) == 0:
    println("\(m)/\(d)は日曜日")
default: break
}

}
