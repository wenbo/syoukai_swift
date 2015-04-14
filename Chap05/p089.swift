import Foundation

var a = "Life is short and time is swift."
println("Length = \(countElements(a))")

let obj1 = NSString(string:a)
let b = String(obj1)
println( a == b )
println( obj1.length )
println( obj1 == b )
// println( b.length ) // エラーになる

println( a.utf16Count )

let us1 = UnicodeScalar(0x83ef) // 華
let us2 = UnicodeScalar("澪")
let us3 : UnicodeScalar = "箒"

println( us1 > us2 )
let u = us3.value
println(u)

let cc = Character(us3)
println("\(cc), \(us3)")
