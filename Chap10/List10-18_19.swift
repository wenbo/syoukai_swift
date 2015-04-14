protocol Copyable {
    func copy() -> Self
}
class GeoPoint : Copyable, Equatable {
    let latitude: Double = 0.0  // 緯度
    let longitude: Double = 0.0 // 経度
    required init(lat:Double, lon:Double) {
        self.latitude = lat
        self.longitude = lon
    }
    func copy() -> Self {
        var nw = self.dynamicType(lat:latitude, lon:longitude)
        return nw
    }
    func show() {
        println("GeoPoint:\(latitude), \(longitude)")
    }
}

class ViewPoint : GeoPoint {
    let name: String = ""
    required init(lat:Double, lon:Double) {
        self.name = "(none)"
        super.init(lat:lat, lon:lon)
    }
    required init(name:String, lat:Double, lon:Double) {
        self.name = name
        super.init(lat:lat, lon:lon)
    }
    override func copy() -> Self {
        var nw = self.dynamicType(name:name, lat:latitude, lon:longitude)
        return nw
    }
    override func show() {
        println("ViewPoint:\(name), \(latitude), \(longitude)")
    }
}
func == (lhs:GeoPoint, rhs:GeoPoint) -> Bool {
    return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
}
/*
func == (lhs:ViewPoint, rhs:ViewPoint) -> Bool {
    return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
}
*/

var g0 = GeoPoint(lat:35.70040, lon:139.77217)
var g1 = g0.copy()
g1.show()
var g2 = ViewPoint(name:"松本城", lat:36.238064, lon:137.968457)
var g3 = g2.copy()
g3.show()
println(g2 === g3)
println(g2 == g3)
