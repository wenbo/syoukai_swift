let i: Int = 10
// var a: Double = i // エラー

let r:Double = 0.1
// var f:Float = r   // エラー。型が異なる

let w:Double = 0.5
// let i:Int = 10
// let b = w * i      // エラー

// let i: Int = 10
var a: Double = Double(i)
var j: Int = Int(a * 1.25)
println(j)

var t:Double = 8
let s = t * 10
println(s)
