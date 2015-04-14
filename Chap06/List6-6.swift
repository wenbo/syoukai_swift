enum Direction : Int {
    case Up = 0, Right, Down, Left
    static var defaultDirection = Direction.Up
    init() {
        self = Direction.defaultDirection
    }
    static func arrow(d:Direction) -> String {
        return ["↑", "→", "↓", "←"][d.rawValue]
    }
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

Direction.defaultDirection = Direction.Right
var e = Direction()
println(Direction.arrow(e))
