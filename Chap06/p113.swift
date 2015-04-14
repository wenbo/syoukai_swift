func BMI(tall:Double, weight:Double) -> (index: Double, target: Double) {
    let ideal = 22.0                // 理想的な値
    let t2 = tall * tall / 10000.0  // cm を m に換算して二乗
    let index = weight / t2
    return (index, ideal * t2)
}

// var v: (Double, Double)
// v = BMI(168.0, 73.5)
let v = BMI(168.0, 73.5)
println("BMI=\(v.index), target=\(v.target)")
