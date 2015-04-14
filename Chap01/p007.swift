let specialKeys = "command=\u{2318}, option=\u{2325}"
println(specialKeys)

let n = 8
let str = "\(n)の2乗は\(n*n)です。"
println(str)

let name = "瀬能"
let msg = "こんにちは、" + name + "さん。"
println(msg)

let atmark: Character = "@"
let arrow = Character("→")
// var a = atmark + atmark // エラー。文字は連結できない
var path = "東京\(arrow)甲府\(arrow)松本"
println(path)
path.append(atmark)
println(path)
