func skip(cond:Bool, arg:@autoclosure() -> Int) {
    if !cond { println("value = \(arg())") }
}
/*
func skip(cond:Bool, arg:Int) {
    if !cond { println("value = \(arg)") }
}
*/
func highCost(a:Int) -> Int {
    println("High Cost...\(a)")
    return a * a
}
skip(true, highCost(1))
skip(false, highCost(10))
