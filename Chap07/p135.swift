func odd(i:Int) -> Bool { println(i); return i&1 == 1 }

var b = true
var c1 = b || odd(1)
var c2 = !b && odd(3)

println("c1, c2 = \((c1, c2))")

c1 = b | odd(1)
c2 = !b & odd(3)
println("c1, c2 = \((c1, c2))")
