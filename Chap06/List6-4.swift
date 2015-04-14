enum Direction : Int {
    case Up = 0, Right, Down, Left
    func clockwise() -> Direction {
        let t = (self.rawValue + 1) % 4
        return Direction(rawValue:t)!
    }
}

let d = Direction.Up
println(d.clockwise() == Direction.Down)                 // false
println(d.clockwise().clockwise() == Direction.Down)     // true
