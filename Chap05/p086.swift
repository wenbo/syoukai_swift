var st1 = stride(from:8, through:20, by: 4)
for i in st1{print(" \(i)")}
println()
var st2 = stride(from:8, to:20, by: 4)
for i in st2{print(" \(i)")}
println()

var st3 = stride(from:5, to:0, by: -1)
for i in st3{print(" \(i)")}
println()

var st4 = stride(from:0.0, to:1.0, by:0.2)
for i in st4{print(" \(i)")}
println()
