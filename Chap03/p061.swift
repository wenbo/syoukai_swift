struct Ounce {
    var mL:Double = 0.0
    static let ounceUS = 29.5735
    init(ounce:Double) {
        //mL = ounce * Ounce.ounceUS
        self.ounce = ounce
    }
    var ounce: Double {
        get { return mL / Ounce.ounceUS }
        set { mL = newValue * Ounce.ounceUS }
    }
}

var a = Ounce(ounce:2.0)
var b = Ounce(ounce:10.0)
println("\(a.mL)mL, \(b.mL)mL")
swap(&a, &b)
println("\(a.mL)mL, \(b.mL)mL")

swap(&a.mL, &b.mL)
println("\(a.mL)mL, \(b.mL)mL")

swap(&a.ounce, &b.ounce)
println("\(a.ounce)oz, \(b.ounce)oz")
var z: Double = 0.1
swap(&a.ounce, &z)
println("\(a.ounce)oz, \(z)")
