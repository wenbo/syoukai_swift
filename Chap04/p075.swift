let year : Int! = "2020".toInt()  // 型宣言に ! を使う
println("あと\(year - 2014)年") // 開示指定は不要

let nx : Int! = "next".toInt()
// var ps = nx + 1                 // nxがnilなので実行時エラーになる

var x: Int? = 100
var y: Int? = nil
swap(&x, &y)
println("x=\(x), y=\(y!)")

var a: Int = 8
var p: Int? = 99         // 暗黙的開示オプショナル
var t: Int! = 1000
swap(&a, &p!)            // a = 99, p = 8 になる
println("a=\(a), p=\(p!)")
swap(&a, &t!)            // a = 1000, t = 99 になる
println("a=\(a), t=\(t)")
