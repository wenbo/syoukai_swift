let dic = ["Mars":"火星", "Venus":"金星"]
for ( en, ja ) in dic {
    println("\(en) = \(ja)")
}

for t in dic {
    println("\(t.0) = \(t.1)")
}

for k in dic.keys {
    println("key: \(k)")
}
let planets = [String]( dic.values )
println(planets)
