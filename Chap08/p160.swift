import Foundation

class Time : NSObject {
    var hour = 0, min = 0
    init(hour:Int, min:Int) {
        self.hour = hour; self.min = min
    }
    func add(min:Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        }else{
            self.min = m
        }
    }
    func inc() {
        self.add(1);
    }
    func description() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

class Time12 : Time {
    var pm:Bool
    init(hour:Int, min:Int, pm:Bool) {
        self.pm = pm
        super.init(hour:hour, min:min)
    }
    override convenience init(hour:Int, min:Int) {
    // convenience override init(hour:Int, min:Int) {
        let isPm = hour >= 12
        self.init(hour:isPm ? hour - 12 : hour, min:min, pm:isPm)
    }
    override func add(min:Int) {
        super.add(min)
        if hour >= 12 {
            hour -= 12
            pm = !pm
        }
    }
    override func description() -> String {
        let s = super.description()
        return s + " " + (pm ? "PM" : "AM")
    }
}

var array = [
  Time12(hour:13, min:20), Time(hour:18, min:45)
]
var a2:[Time] = array  // [Time12]はエラーになる

class SOS { var name = "" }

var all:[AnyObject] = [Time12(hour:0, min:15), SOS() ]
println( (all[0] as Time12).description() )

var every:[Any] = [ Time12(hour:16, min:30), "駅前", 5 ]
println( (every[0] as Time12).description() )

for obj in every {
    switch obj {
    case let t as Time12: println("Time12: " + t.description())
    case let t as Time: println("Time: " + t.description())
    case let s as String: println("String: " + s)
    default: println(obj)
    }
}
