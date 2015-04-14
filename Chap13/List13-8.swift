struct MySet<T: Equatable> {
    private var elems: [T] = []

    mutating func put(key: T) {
        if find(elems, key) == nil {
            elems.append(key)
        }
    }
    var count: Int { return elems.count }
    subscript (index: Int) -> T {
        return elems[index]
    }
}

func testMySet<T: Equatable>(data:[T]) {
    var set = MySet<T>()
    for x in data { set.put(x) }
    for i in 0..<set.count {
        print(" \(set[i])")
    }
    println()
}

let colors = [ "Green", "Gray", "Silver", "Gray", "DarkBlue", "Yellow" ]
testMySet(colors)

let tc = [ 4, 12, 3, 10, 4, 11, 6, 19, 13, 20, 2, 4 ]
testMySet(tc)
