func BMI(tall:Double, weight:Double) -> (Double, Double) {
    let ideal = 22.0                  // 理想的な値
    let t2 = tall * tall / 10000.0    // cm を m に換算して二乗
    let index = weight / t2
    return (index, ideal * t2)
}

println(BMI(177.0, 73.0))
println(BMI(177.0, 80.0))
println(BMI(165.0, 60.5))
println(BMI(161.0, 55.0))
