var oracles = [
    "すべて順調", "注目されて頑張る時", "誤解されやすい時",
    "平穏な状況", "気配りが幸運の鍵", "怪我や事故に要注意",
    "くじけず頑張る時", "良い知らせのある時", "失意の時",
    "好機到来", "見込み違いが失敗の元", "思わぬ幸運があるかも",
] // 最後の要素の末尾に "," があってもよい
var initFlag = false

class Monthology : Foretellable {
    let person: Person
    required init(person:Person) {
        self.person = person
    }
    class func message(mon:Int) -> String {
        if !initFlag {
            shuffleArray(&oracles)      // 内容を乱数で入れ替える
            initFlag = true
        }
        return oracles[mon - 1] // 1 <= mon <= 12
    }
    func predict(subject:String) -> String {
        let mon = person.birth.mon
        var s = "\(mon)月生まれの\(person.name)さんの\(subject)は、"
        return s + Monthology.message(mon) + "です。"
    }
}
