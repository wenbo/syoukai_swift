class MyInt {
    var value = 0
    init(_ v:Int) { value = v }
    deinit { println("deinit: \(value)") }
}
func makerZ(a:MyInt, s:String) -> () -> () {
    var localvar = a
    return { println("\(s): \(++localvar.value)") }
}

var obj: MyInt! = MyInt(10)
var m1:(()->())! = makerZ(obj, "m1")
m1()
var m2:(()->())! = makerZ(obj, "m2")
obj = nil
m2()
m1()
m1 = nil
m2()
m2 = nil
