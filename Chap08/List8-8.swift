class A {
    class func show() { println("A") }
    class func who() { show() }
}

class B: A {
    override class func show() { println("B") }
}

A.who()
B.who()
