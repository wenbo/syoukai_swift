func m3(a:Int, b:Int, c:Int) -> Int {
    return (a + b) * c
}

func m3curried(a: Int)(b:Int, c:Int) -> Int {
   return (a + b) * c
}
var m3with10 = m3curried(10)
println(m3with10(b:5, c:4))

func m3another(a:Int, b:Int)(c:Int) -> Int {
   return (a + b) * c
}
var m3with10and5 = m3another(10, 5)
println(m3with10and5(c:4))

func m3metal(a:Int, b:Int, c:Int)() -> Int {
   return (a + b) * c
}
var m3withAll = m3metal(10, 5, 4)
println(m3withAll())
