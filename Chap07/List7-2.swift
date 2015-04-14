postfix operator % {}

postfix func % (n:Int) -> Double {
    return 0.01 * Double(n)
}
postfix func % (r:Double) -> Double {
    return 0.01 * r 
}

var price: Double = 19_800
println(price * 85% * 108%)
