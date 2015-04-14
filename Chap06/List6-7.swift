typealias Date = (Int,Int,Int)

enum Ticket {
    case 切符(Int, Date, 小人:Bool)  	// 普通券：価格、日付、小人
    case 一日券(Date, 小人:Bool)    	// 一日券：日付、小人
    case 敬老パス
    case カード(Int, 小人:Bool)      	// プリペイドカード：残高、小人
}

var today = (2014,10,26)

let myticket = Ticket.切符(250, today, 小人:false)
let pass = Ticket.一日券(today, 小人:true)
let elders = Ticket.敬老パス
var mycard = Ticket.カード(3300, 小人:false)
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
}
