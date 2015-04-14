struct MySet {
    private var elems: [String] = []

    mutating func put(key: String) {
        if find(elems, key) == nil {
            elems.append(key)
        }
    }
    var count: Int { return elems.count }
    subscript (index: Int) -> String {
        return elems[index]
    }
}

func testMySet(data:[String]) {
    var set = MySet()
    for x in data { set.put(x) }
    for i in 0..<set.count {
        print(" \(set[i])")
    }
    println()
}

let colors = [ "Green", "Gray", "Silver", "Gray", "DarkBlue", "Yellow" ]
testMySet(colors)
