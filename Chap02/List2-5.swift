func dayOfWeek(var m:Int, let d:Int, var year y:Int = 2015) -> Int {
    if m < 3 {
        m += 12; --y
    }
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

println(dayOfWeek(11, 14, year:2014))
println(dayOfWeek(1, 1, year:2014))
println(dayOfWeek(1, 1))
