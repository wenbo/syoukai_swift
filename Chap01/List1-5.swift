// for-in文で文字列から文字を取り出す
let str = "こんにちは"
// let str = "プログラミング"
var result = ""
for ch in str {
    result = String(ch) + result
}
println(result)

