let 用紙幅 = 18.0
var 左余白割合 = 0.10, 右余白割合 = 0.08
var 本文横幅 = 用紙幅 * (1.0 - 左余白割合 - 右余白割合)
println("本文横幅 = \(本文横幅)")

var `fallthrough` = 10

typealias SInteger = Int32

var a: [Int]
var b: Array<Int>

/* --- ここからコメント開始
let e = 2.71828                /* ここで外側のコメントは終了しない */
let str = "\(e)です。"         // このコメントも問題なし
--- ここまでがコメント */

println("fallthrough = \(`fallthrough`)")
