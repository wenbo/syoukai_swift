class RandArray {
    var data: [Int]
    init(length:Int, generator:Rand) {
        data = [Int](count:length, repeatedValue:0)
        for var i = 0; i < length; i++ {
            data[i] = generator.random()
        }
    }
    func sort() {
        data.sort { $0 < $1 }
    }
}
