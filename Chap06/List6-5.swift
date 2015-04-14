enum Direction : Int {
    case Up = 0, Right, Down, Left
    func clockwise() -> Direction {
        let t = (self.rawValue + 1) % 4
        return Direction(rawValue:t)!
    }
    var horizontal: Bool {
        switch self {
        case .Right, .Left: return true
        default: return false
        }
    }
    mutating func turnBack() {
        self = Direction(rawValue:((self.rawValue + 2) % 4))!
    }
}

var d = Direction.Left
println(d.rawValue)
d.turnBack()
println(d.rawValue)
println("horizontal: \(d.horizontal)")
