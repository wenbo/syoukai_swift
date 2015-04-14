var a : Int = 0
var b : Int? = 10
b = nil
// a = nil   // エラーになる


let olympic = "2020"
var year : Int? = olympic.toInt()
// var year : Optional<Int> = olympic.toInt()
var remain : Int = year! - 2014
println(remain)

let ww3 : Int? = nil
// var remain : Int = ww3! ? 2014   // 実行時エラーになる

var y : Int? = "2020".toInt()
y! -= 2014
println(y!)
