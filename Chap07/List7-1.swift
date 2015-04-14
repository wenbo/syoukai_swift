infix operator 〜 {
    precedence 20
    associativity none
}
func 〜 (n:Int, w:Int) -> String {
    var str = String(n)
    let pad = w - countElements(str)
    if pad > 0 {
        str = String(count:pad,
                     repeatedValue:Character(" ")) + str
    }
    return str
}

for var wid = 2; wid <= 6; wid += 2 {
    for i in 1...5 {
        print(i + 7 〜 wid)
    }
    println()
}
