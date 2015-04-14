// 九九の表
for var i = 1; i <= 9; i++ {
    for var j = 1; j <= 9; j++ {
        let n = i * j
        if (n < 10) { print(" ") }
        print(" \(n)")
    }
    println()
}
