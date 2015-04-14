var z : UInt8 = 1
z = z &- 2
// z = z - 2    // 実行時エラーになる
println(z)

var d = 0, w = 10
// w = w &/ d   // 実行時エラーになる
w = w &/ d
println(w)
