func f(i:Int) -> Int {
    println(i)
    return i
}

var x = f(1) + f(2) * f(3)
var y = (f(1) + f(2)) * f(3)
var z = f(1) + f(2) * (f(3) + f(4))
