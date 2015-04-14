func printMonth(firstDay:Int, days:Int) {
    func printDay(d:Int) {
        if d <= 0 { // 月初めの空白
            print("    ")
        }else {
            print(d < 10 ? "   \(d)" : "  \(d)")
        }
    }

    var d = 1 - firstDay    // 月のはじまりの空白は負と０で表す
    while d <= days {
        for var w = 0; w < 7; w++ {
            printDay(d)
            if ++d > days {
                break
            }
        }
        println()
    }
}

printMonth(2,31)
printMonth(5,29)

// printDay(10)
println()
