struct Date {
    var year = 2010    // 型を明記するなら var year:Int = 2010
    var month = 7
    var day=28         //varyear=2010,month=7,day=28 とも書ける
}

var d = Date()         // 日付は 2010年7月28日

println(d.year)
d.day = 29
println("\(d.year).\(d.month).\(d.day)")

var 合宿 = Date(year:1998, month:8, day:8)
