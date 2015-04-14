class Propα  {
    var attr = 0
}

class Propβ : Propα  {
    override var attr : Int {
        willSet{ println("β: will set") }
        didSet{ println("β: did set") }
    }
}

class Propγ : Propβ {
    override var attr : Int {
        willSet{ println("γ: will set") }
        didSet{ println("γ: did set") }
    }
}

var g = Propγ()
g.attr = 1
