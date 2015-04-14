// ひと月のカレンダー
let days = 31
let firstDay = 2
var w = 0
for ; w < firstDay; w++ {
    print("    ")
}
var d = 1
loop: while true {
    for ; w < 7; w++ {
        print(d < 10 ? "   " : "  ")
        print(d)
        if ++d > days {
            println()
            break loop
        }
    }
    println()
    w = 0
}
