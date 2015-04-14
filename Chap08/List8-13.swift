let ICCardDeposit = 500

class ICCard {
    var money = 0
    required init(charge:Int) {
        money = charge - ICCardDeposit
    }
}

private var icocaiSerial = 0

class Icocai : ICCard {
    let idnumber : Int = 0
    init(id:Int, money:Int) {
        idnumber = id
        super.init(charge:money)
    }
    required init(charge:Int) { // 必須イニシャライザを定義
        idnumber = ++icocaiSerial
        super.init(charge:charge)
    }
}

class Suiica : ICCard {
    var name = String()
}

var card = Suiica(charge:2000)
println(card.money)

var mycard = Icocai(charge:2000)
println(mycard.money)
