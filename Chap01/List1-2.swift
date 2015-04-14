// コラッツの問題
var n = 7
do {
    print("\(n) ")
    if n % 2 == 0 {
        n /= 2
    }else {
        n = n * 3 + 1
    }
}while n > 1
println(n)
