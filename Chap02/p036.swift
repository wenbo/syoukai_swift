func area(h:Double, w:Double) -> Double {
    return h * w
}

let v1 = 50.0, v2 = 100.0, t = 20.0
var a = area(v2 - v1, t)
println(a)


func area(height h:Double, width w:Double) -> Double {
    return h * w
}
a = area(height: v2 - v1, width: t)
println(a)

func other_area(#height:Double, #width:Double) -> Double {
    return height * width
}

_ = other_area(height: v2 - v1, width: t)

for _ in 1...10 {
    print(".")
}
println()
