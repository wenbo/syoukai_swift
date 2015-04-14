var d = ["Swift":2014, "Objective-C":1983]
println(d["Swift"])
println(d["Ruby"])

if let y = d["Ruby"] { // d["..."] は Int?型
    println(y)
}

var e = ["Ruby":1995]
println(e)
e["Java"] = 1995
e["Python"] = 1991
println(e)
e["Java"] = nil
println(e)

var table = [Int:String]()
table[20001] = "Alive"
if let s = table[20001] {
    println(s)
}

var a = ["one":"I", "two":"II", "three":"III"]
let b = ["two":"II", "one":"I"]
println( a == b )
a["three"] = nil
println( a == b )
