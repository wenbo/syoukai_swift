// Swap
func mySwap(inout a:Int, inout b:Int) {
    let t = a; a = b; b = t
}

var x = 100
var y = 0
mySwap(&x, &y)

println("x=\(x), y=\(y)")
