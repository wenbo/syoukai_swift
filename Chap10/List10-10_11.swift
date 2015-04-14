protocol Vector2D {
    typealias DataType
    var x : DataType { get set }
    var y : DataType { get set }
}

struct Vector2DFloat : Vector2D {
    typealias DataType = Float      // 付属型に具体的な型を指定
    var x, y: DataType
    func convToDouble() -> Vector2DDouble {
        return Vector2DDouble(
            x: Vector2DDouble.DataType(x),      // 型として利用可能
            y: Vector2DDouble.DataType(y))
    }
}
struct Vector2DDouble : Vector2D {
    typealias DataType = Double     // 付属型に具体的な型を指定
    var x, y: DataType
}
struct Vector2DGrade : Vector2D {
    enum DataType { case A, B, C, D, X }    // ネスト型を定義
    var x, y: DataType
}

var a = Vector2DDouble(x: 10.0, y: 12.0)
var b = Vector2DFloat(x:0, y:1)
println("x:\(b.x), y:\(b.y)")
let c = b.convToDouble()
println("x:\(c.x), y:\(c.y)")
var g = Vector2DGrade(x: .A, y: .C)
