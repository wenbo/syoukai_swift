func f(i:Int) -> Int { println(i); return i }

var opv: Int? = 0
println(opv ?? f(100))
opv = nil
println(opv ?? f(100))
