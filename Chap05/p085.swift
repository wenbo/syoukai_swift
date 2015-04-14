var inth: HalfOpenInterval<Int> = 0..<10
var intc: ClosedInterval<Int> = 0...10
var rg: Range<Int> = 0..<10

/*
var inth = HalfOpenInterval<Int>(0, 10)
var intc = ClosedInterval<Int>(0, 10)
var rg = Range<Int>(start: 0, end: 10)
*/

println(inth)
println(intc)
println(rg)

let n = 5
switch n {
case intc: println(n)
// case rg: println("Range")  // これはエラーになる
default: break
}

for i in rg { println(i) }
