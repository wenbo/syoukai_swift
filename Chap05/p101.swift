var table: [[String]] = [["A","B"],["X","Y","Z"]]
println(table[0])
println(table[1][0])
table[0].removeAtIndex(1)
println(table)

// var space : [Int?] = [ 1, 2, nil, 4, nil ]
var space = [Int?](count:10, repeatedValue:nil)
space[2] = 100
space[3] = 300
println(space)
