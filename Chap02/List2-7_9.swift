func mySwap(inout a:Int, inout b:Int) {
    let t = a; a = b; b = t
}
var s = 10, t = 20
mySwap(&s, &t)
println("s=\(s), t=\(t)")

// **** List2-7 ****
func mySwap(inout a:Int, inout b:Int, inout c:Int) {
    let t = a; a = b; b = c; c = t
}

var x = 1, y = 2, z = 3
mySwap(&x, &y, &z)
println("x=\(x), y=\(y), z=\(z)")


func mySwap(inout a:String, inout b:String) -> Bool {
    let t = a; a = b; b = t
    return a == b
}

var a = "Alcott", b = "Bodewig"
mySwap(&a, &b)
println("a=\(a), b=\(b)")

// **** List2-8 ****
func mySwap(inout a:Int, inout b:Int) -> Bool {
    if a == b {
        return false
    }
    let t = a; a = b; b = t
    return true
}
s = 10; t = 20
let flag:Bool = mySwap(&s, &t)
// mySwap(&s, &t)
println("s=\(s), t=\(t)")

// **** List2-8 ****
func mySwap(inout little a:Int, inout great b:Int) {
    if a > b {
        let t = a; a = b; b = t
    }
}

s = 10; t = 20
mySwap(little:&s, great:&t)
println("s=\(s), t=\(t)")
