var fibo1 = 0, fibo2 = 1
print(" \(fibo1)")
for var i = 0; i < 50; i++ {
    (fibo1, fibo2) = (fibo2, fibo1 + fibo2)
    print(" \(fibo1)")
}
println()
