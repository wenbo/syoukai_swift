func isTriangle(a:Float, b:Float, c:Float) -> Bool {
    if a > b && a > c {
        return a < b + c
    }else if b > a && b > c {
        return b < a + c
    }else {
        return c < a + b
    }
}

println(isTriangle(12.0, 20.0, 8.5))
println(isTriangle(90.0, 50.0, 30.0))
let a : Float = 10.0
println(isTriangle(a, a, 12))
