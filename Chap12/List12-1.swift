var globalCount = 0

// ()->Int という型を持つクロージャのインスタンスを作って返す関数
func maker(a:Int, b:Int) -> () -> Int {
    var localvar = a
    return { () -> Int in  // クロージャ式。型宣言は省略可能。
        globalCount++      // globalCountは参照されるだけ
        localvar += b      // localvar, b がキャプチャされる
        return localvar
    }
}

var m1 = maker(10, 1)
println("m1() = \(m1()), globalCount = \(globalCount)")
println("m1() = \(m1()), globalCount = \(globalCount)")
globalCount = 1000
println("m1() = \(m1()), globalCount = \(globalCount)")
var m2 = maker(50, 2)
println("m2() = \(m2()), globalCount = \(globalCount)")
println("m1() = \(m1()), globalCount = \(globalCount)")
println("m2() = \(m2()), globalCount = \(globalCount)")
