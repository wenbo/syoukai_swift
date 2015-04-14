let text = "Swiftはthrow-catch構文が、ない"
let first = UnicodeScalar(0x3041) // "ぁ"
let last = UnicodeScalar(0x309f)  // "ゟ"
var kana = ""
for sc in text.unicodeScalars {
    if sc >= first && sc <= last {
        kana.append(sc)
    }
}
println(kana)
