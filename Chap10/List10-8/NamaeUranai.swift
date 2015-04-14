struct NamaeUranai : Foretellable {
    private static let oracles = [
        "順風満帆", "千客万来", "前途多難", "暗中模索", 
        "先手必勝", "油断大敵", "臥薪嘗胆", "天下泰平",
        "意気軒昂", "一石二鳥", "艱難辛苦", "孤立無援",
    ]
    let person:Person
    private let namval: UInt
    init(person:Person) {
        self.person = person
        namval = NamaeUranai.convert(person.name)
    }
    private static func convert(s:String) -> UInt {
        var raw : UInt = 0
        for ch in s.utf16 {
            raw = (raw << 5) / 3 &+ UInt(ch)
        }
        return raw
    }
    func predict(subject:String) -> String {
        let val = namval &+ NamaeUranai.convert(subject)
        let idx = Int(val) % NamaeUranai.oracles.count
        let s = "\(person.name)さんの\(subject)は、"
        return s + NamaeUranai.oracles[idx] + "です。"
    }
}
