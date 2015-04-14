class A {
    class func show() { println("A") }
    class func who() { show() }
    func myclass() {
        self.dynamicType.who()
    }
}

class B: A {
    override class func show() { println("B") }
}

var a = A()
var b = B()
a.myclass()
b.myclass()
