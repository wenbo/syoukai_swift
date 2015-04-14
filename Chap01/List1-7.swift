// 自然対数の底の計算
var e = 0.0, t = 1.0
for var i = 1.0; i <= 20.0; i++ {
    e += t
    t /= i      // ループを回るたびに 1/i! が計算される
}
println("e=\(e)")