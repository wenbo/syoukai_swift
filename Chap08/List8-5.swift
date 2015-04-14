class Recipe {
    let amount = [ 6.6, 8.9, 7.5, 9.1 ]
    subscript (idx:Int) -> Double {
        return idx < 4 ? amount[idx] : 0.0
    }
}

class Arrange : Recipe {
    var custom: [Double] = []
    override init() {
        super.init()
        custom = amount    // スーパークラスの配列をコピー
    }
    override subscript (idx:Int) -> Double {
        get {
            return idx < 4 ? custom[idx] : 0.0
        }
        set {
            if idx < 4 {
                custom[idx] = newValue
            }
        }
    }
    func recall(idx:Int) {  // 指定した添字について、元の値に戻す
        self[idx] = super[idx]
    }
}

var a = Arrange()
for i in 0..<4 { print(" \(a[i])") }
println()
a[1] = 100.0
a[3] = 100.0
for i in 0..<4 { print(" \(a[i])") }
println()
a.recall(1)
for i in 0..<4 { print(" \(a[i])") }
println()
