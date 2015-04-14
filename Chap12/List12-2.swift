var m1:(() -> ())! = nil
var m2:(() -> ())! = nil

func makerW(a:Int) {
    var localvar = a
    m1 = { localvar += 1; println("m1: \(localvar)") }
    m2 = { localvar += 5; println("m2: \(localvar)") }
    m1()
    println("--: \(localvar)")
    m2()
    println("--: \(localvar)")
}

makerW(10)
m1()
m2()
m1()
