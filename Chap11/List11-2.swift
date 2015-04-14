import Cocoa

private extension CGRect {
    init(points p1:CGPoint, _ p2:CGPoint) {
        var ox, oy, w, h: CGFloat
        (ox, w) = p1.x < p2.x ? (p1.x, p2.x - p1.x)
                              : (p2.x, p1.x - p2.x)
        (oy, h) = p1.y < p2.y ? (p1.y, p2.y - p1.y)
                              : (p2.y, p1.y - p2.y)
        self.origin = CGPoint(x:ox, y:oy)
        self.size = CGSize(width:w, height:h)
    }
    subscript (i:Int) -> CGPoint {
        var p = self.origin
        if i == 1 || i == 2 {
            p.x += self.width
        }
        if i == 2 || i == 3 {
            p.y += self.height
        }
        return p
    }
}

let p1 = CGPoint(x:10.0, y:105.0)
let p2 = CGPoint(x:130.0, y:15.0)
let rect = CGRect(points: p1, p2)
println(rect)

for i in 0...2 {
    print("\(rect[i]), ")
}
println(rect[3])
