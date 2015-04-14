struct Ounce {
    var mL:Double = 0.0
    static let ounceUS = 29.5735   // 1オンス(米国)
    init(ounce:Double) {
        //mL = ounce * Ounce.ounceUS
        self.ounce = ounce
    }
    var ounce: Double { // 計算型プロパティ
        get { return mL / Ounce.ounceUS }
        set { mL = newValue * Ounce.ounceUS }
    }
}

var a = Ounce(ounce:2.0)
println(a.mL)
a.ounce += 8.0
println(a.ounce)
