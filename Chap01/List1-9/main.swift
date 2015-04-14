var sortTest = RandArray(length:200, generator:Rand(max:500))
sortTest.sort()
for t in sortTest.data {
    print(" \(t)")
}
println()
