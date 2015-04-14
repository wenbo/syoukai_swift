let digits = [ "00", "01", "02", "03" ]
var num = digits
num[2] = "Two"
println(digits[2])
println(digits.count)

var roman = ["I", "II", "III"]
roman.append("IV")
println(roman)
let m = roman + ["5", "6"]
println(m)
roman += ["V", "VI"]
println(roman)

let a = [1, 2]
let b = [2, 1]
println( a == b )
println( a+[1]==[1]+b )

var conso = ["K", "S", "T", "N", "H", "M", "Y", "R", "W"]
let sub = conso[3...5]
println(sub)

let subarray = [String](sub) // 配列 ["N", "H", "M"]
println(subarray)

var s = ["春", "夏", "秋", "冬"]
s[0...0] = ["初春", "仲春", "晩春"] // s[0] ではだめ
println(s)             // [初春, 仲春, 晩春, 夏, 秋, 冬] を出力
s[1...2] = ["花見", "梅雨", "夏休み"]
println(s)
                       // [初春, 花見, 梅雨, 夏休み, 夏, 秋, 冬]
s[3...4] = []          // 削除するためにも利用できる
println(s)             // [初春, 花見, 梅雨, 秋, 冬]
