import Foundation

var n:NSNumber = 10.25
println(n as Float)     // 10.25を表示
println(n as Int)       // 10 を表示

var s: String = "protects the knowledge of the strong"
println(s.rangeOfString("owl")!)    // 15..<18を表示。文字列の範囲を得る。
s = "仮装舞踏会"
println((s as NSString).length)     // 5を表示。キャストが必要。

let info:NSDictionary = [ "Height":161.0, "Grade":2, "Level":5 ]
let pinfo = info as [String:Int]
println(pinfo)
