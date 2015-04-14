let year : Int? = "2020".toInt()
if let y = year {
    println("あと\(y - 2014)年")
}else {
    println("エラー ")
}

if var y = "2020".toInt() {
    y -= 2014
    println("あと\(y)年")
}else {
    println("エラー ")
}

var val = "西暦2020".toInt() ?? 2014
println(val)
