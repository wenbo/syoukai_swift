func times(a: Double, b: Double) -> Double {
    return a * b
}

func timesCurried(a: Double) -> Double -> Double {
    func times(b: Double) -> Double {
        return a * b
    }
    return times
}

println( times(2.54, 8.0) )
let f = timesCurried(2.54)
println( f(8.0) )


func timesCurried2(a: Double)(b: Double) -> Double {
    return a * b
}
var inch = timesCurried2(2.54)
println(inch(b:20.0))
