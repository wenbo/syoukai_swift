enum Rank : Int {
    case Ace = 1, Two, Three, Four, Five, Six, Seven,
        Eight, Nine, Ten, Jack, Queen, King
}

func ~= (p:Int, r:Rank) -> Bool {
    return p == r.rawValue
}

let samples:[Rank] = [
    .Queen, .Ace, .Ten, .Six, .King, .Jack ]

for card in samples {
    switch card {
    case 1: print("Ace ")
    case 13: print("King ")
    case .Queen: print("Queen ")
    default: print(". ")
    }
}
println()
