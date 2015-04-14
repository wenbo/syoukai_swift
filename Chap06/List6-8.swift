typealias Date = (Int,Int,Int)
enum Ticket {
    case 切符(Int, Date, 小人:Bool)  	// 普通券：価格、日付、小人
    case 一日券(Date, 小人:Bool)    	// 一日券：日付、小人
    case 敬老パス
    case カード(Int, 小人:Bool)      	// プリペイドカード：残高、小人
    var isChild: Bool {
        switch self {
        case .切符(_, _, true), .一日券(_, true), .カード(_, true):
            return true    // 普通券、一日券、プリペイドカードが小人用
        default: break
        }
        return false
    }
    mutating func pay(u:Int) -> Bool {
        switch self {
        case .切符(let fare, _, _):
            return u <= fare             // 購入金額と比較する
        case .カード(let point, let flag):
            if point < u { return false } // 支払いできない
            self = .カード(point - u, 小人:flag) // 情報を書き換える
        default: break
        }
        return true
    }
}

var today = (2014,10,26)

let myticket = Ticket.切符(250, today, 小人:false)
let pass = Ticket.一日券(today, 小人:true)
let elders = Ticket.敬老パス
var mycard = Ticket.カード(300, 小人:false)
var card2 = Ticket.カード(30, 小人:true)

var list = [ myticket, pass, elders, mycard, card2 ]

for t in list {
switch t {
case let .切符(fare, _, flag):
    println("普通券: \(fare) " + (flag ? "小人" : "大人"))
case .一日券:
    println("一日券")
case .敬老パス:
    println("敬老パス")
case .カード(let r, true) where r < 110:
    println("カード: 残額不足")
case .カード(let r, false) where r < 230:
    println("カード: 残額不足")
case .カード:
    println("カード")
}
var tt = t
if tt.pay(260) { println("OK") }
else { println("OUT") }
switch tt {
    case .カード(let p, _): println("\(p)")
    default: break
}
}
