import Darwin

var c1 = { () -> () in println("Hello") }
c1()

var pi:Double = { () -> Double in atan(1.0)*4.0 }()
println(pi)

let c2 = { (a:Int, b:Int) -> Double in
    if b == 0 { return 0.0 }
    return Double(a) / Double(b)
}
println(c2(10, 8))

var c3: Int = {
    println("What?")
    return Int(c2(9, 4))
}()
println(c3)

let c4 = { 10.0 / 2.5 }
// let c5 = { return 10.0 / 2.5 } // エラーになる
