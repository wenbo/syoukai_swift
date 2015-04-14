typealias Date = (Int,Int,Int)
func dateAfter(days:Int, date:Date) -> Date {
    return date
}

struct Ticket {
    enum 券種類 {
        case 普通券(Int), 回数券(Int)
        case 一日券, 敬老パス, カード
    }
    let kind: 券種類
    let date: Date          // 購入日付または使用期限
    let child: Bool         // 子供料金か
    var point = 0           // プリペイドカードの残額

    init(券 t:券種類, 日付:Date, 小人:Bool) {
        kind = t
        switch t {
        case .回数券: date = dateAfter(90, 日付)
        default: date = 日付
        }
        child = 小人
    }
    init(カード price:Int, 日付:Date, 小人:Bool) {
        kind = .カード; point = price
        date = 日付; child = 小人
    }
}

var today = (2014,10,26)

// let myticket = Ticket(券:.回数券(250), 日付:today, 小人:false)
let myticket = Ticket(券:Ticket.券種類.回数券(250), 日付:today, 小人:false)
let pass = Ticket(券:.一日券, 日付:today, 小人:true)
var mycard = Ticket(カード:3300, 日付:today, 小人:false)
