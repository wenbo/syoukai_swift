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
