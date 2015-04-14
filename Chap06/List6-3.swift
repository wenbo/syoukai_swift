enum Direction {
    case Up, Down, Right, Left
    func clockwise() -> Direction {
        switch self {
            case .Up:    return .Right
            case .Down:  return .Left
            case .Right: return .Down
            case .Left:  return .Up
        }
    }
}

let d = Direction.Up
// d.clockwise()
println(d.clockwise() == Direction.Down)                 // false
println(d.clockwise().clockwise() == Direction.Down)     // true
