let c1 = { (a:Int, b:Int) -> Double in
    return Double(a) / Double(b) }

var c2: (Int, Int) -> Double = c1
c2(10, 4)
println(c2)

func f1(a:Int, b:Int) -> Double { return Double(a) / Double(b) }
println(f1)
c2 = f1


typealias MyClosure = (Int, Int)->Double
var ca3 = [MyClosure]()

ca3.append(c1)
ca3.append(f1)
println(ca3)
