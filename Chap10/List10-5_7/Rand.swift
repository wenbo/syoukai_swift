import Foundation

private var seed: UInt32 = 0
class Rand {
    let max = 0
    init(max:Int) {
        self.max = max
        if seed == 0 {
            seed = UInt32(time(nil))
            srandom(seed)
        }
    }
    func random() -> Int {
        return Foundation.random() % max
    }
}

func shuffleArray(inout a:[String]) {
    let cnt = a.count
    let rnd = Rand(max: cnt)
    for i in 0..<cnt {
        let x = rnd.random()
        if i != x {
            (a[i], a[x]) = (a[x], a[i])
        }
    }
}
