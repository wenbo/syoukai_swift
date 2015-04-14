func dayOfWeek(m:Int, d:Int, year y:Int = 2015) -> Int {
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

println(dayOfWeek(11, 14, year:2014))
