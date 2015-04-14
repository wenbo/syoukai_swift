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

extension MySet : SequenceType {
    func generate() -> MySetGenerator<T> {
        return MySetGenerator<T>(elems)
    }
}

struct MySetGenerator<T> : GeneratorType {
    private let array:[T] = []
    private var index = 0
    init(_ a:[T]) { array = a }
    mutating func next() -> T? {
        return index >= array.count ? nil : array[index++]
    } // 配列の要素を順に渡す。最後まで行ったらnilを返す。
}

func testMySet<T: Equatable>(data:[T]) {
    var set = MySet<T>()
    for x in data { set.put(x) }
    for v in set {    // MySetのインスタンスをfor-in文で利用できる
        print(" \(v)")
    }
    println()
}

let colors = [ "Green", "Gray", "Silver", "Gray", "DarkBlue", "Yellow" ]
testMySet(colors)

let tc = [ 4, 12, 3, 10, 4, 11, 6, 19, 13, 20, 2, 4 ]
testMySet(tc)
