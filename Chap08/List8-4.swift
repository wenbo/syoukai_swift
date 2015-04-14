class Prop {
    var attr = 0
}

class PropA : Prop {
    override var attr : Int {
        get { return super.attr & 1 }
        set { super.attr = newValue }
    }
}

class PropB : Prop {
    override var attr : Int {
        get { return super.attr }
        set { super.attr = newValue / 10 * 10 }
    }
}

var a = PropA()
a.attr = 105
println(a.attr)
var b = PropB()
b.attr = 2045
println(b.attr)
