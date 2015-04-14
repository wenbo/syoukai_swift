import Foundation
let gu : Character = "グ"
let kud : Character = "ク\u{3099}"
let str = "\(gu)-\(kud)"
println( str.utf16Count )
println( countElements(str) )
println( gu == kud )

for cc in str { print("\(cc):") } ; println()

for cc in str.unicodeScalars { print("\(cc):") } ; println()
