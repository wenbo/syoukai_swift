func mySwap<T>(inout a:T, inout b:T) {
    let t = a; a = b; b = t
}

var a = "Aria", b = "Jeanne"
mySwap(&a, &b)
println("a=\(a), b=\(b)")
var s = (1, 2), t = (100, 50)
mySwap(&s, &t)
println("s=\(s), t=\(t)")

var v = ((2, 3), 9, (88, 108))
mySwap(&v.0, &v.2)
println(v)
