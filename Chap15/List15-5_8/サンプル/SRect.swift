import Foundation

extension NSPoint: Printable {
    public var description: String {
        return "(\(x), \(y))"
    }
}

class SRect : MyRect, Printable {
    let name: String
    init(name:String, origin:NSPoint, upperRight ur:NSPoint) {
        self.name = name
        super.init(origin:origin, upperRight:ur)
    }
    override var description: String {
        return "\(name): \(origin) - \(upperRight)"
    }
}
