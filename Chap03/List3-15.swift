struct FoodMenu {
    let menu = ["ざる", "かけ", "たぬき"]
    var submenu = ["とろろ", "天ぷら", "南ばん"]
    let count = 6
    subscript (i:Int) -> String {
        get {
            return i < 3 ? menu[i] : submenu[i - 3]
        }
        set {
            if i > 2 && i < 6 {
                submenu[i - 3] = newValue
            }
        }
    }
}

var menu = FoodMenu()
for var i = 0; i < menu.count; i++ {
    print(menu[i] + " ")
}
println()

menu[0] = "もり"
menu[5] = "くるみ"
for var i = 0; i < menu.count; i++ {
    print(menu[i] + " ")
}
println()
