var globalCount = 0

func maker(a:Int, b:Int) -> () -> Int {
    var localvar = a
    func localfunc() -> Int {
        globalCount++
        localvar += b
        return localvar
    }
    return localfunc
}

var m1 = maker(10, 1)
println("m1() = \(m1()), globalCount = \(globalCount)")
println("m1() = \(m1()), globalCount = \(globalCount)")
globalCount = 1000
println("m1() = \(m1()), globalCount = \(globalCount)")

var m2 = maker(50, 2)
println("m2() = \(m2()), globalCount = \(globalCount)")
println("m1() = \(m1()), globalCount = \(globalCount)")
println("m2() = \(m2()), globalCount = \(globalCount)")
