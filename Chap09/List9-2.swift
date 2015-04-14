struct DoNothing {
    var array:[Int]
    init(_ a:[Int]) { array = a }
    mutating func trouble(x: Int) -> Int {
//        array[x] = 0  // 実行すると実行速度が低下
        return array[x-1]
    }
}

var la = [Int](0 ..< 100_000)
var mom = 0
for x in 1...1000 {
    var na = DoNothing(la)
    mom += na.trouble(x)
}
println(mom)
