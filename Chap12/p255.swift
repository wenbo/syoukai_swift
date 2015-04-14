let dat = [2, 80, 45, 13]
let str = dat.map{ "\($0)" }
println(str)

let str2 = dat.filter{ $0 >= 10 }.sorted( < ).map{ "\($0)" }
println(str2)

let numbers = [Int](1...10)
var sum = numbers.reduce(0) { $0 + $1 }
println(sum)
sum = numbers.reduce(0, +)
println(sum)
