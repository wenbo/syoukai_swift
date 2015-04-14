class A {
    func show() { println("A") }
    func who() { show() }
}

class B: A {
    override func show() { println("B") }
}

var a = A()
var b = B()
a.who()
b.who()
