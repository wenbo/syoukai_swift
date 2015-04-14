func mySwap<T: Comparable>(inout little a:T, inout great b:T) {
    if a > b {
        let t = a; a = b; b = t
    }
}

/* --------- */
enum WeekDay: Int, Comparable {
    case Sun, Mon, Tue, Wed, Thu, Fri, Sat
}
func < (lhs:WeekDay, rhs:WeekDay) -> Bool {
    return lhs.rawValue < rhs.rawValue
}
/* --------- */

var sun = WeekDay.Sun
var wed = WeekDay.Wed
mySwap(little:&wed, great:&sun)
println(sun.rawValue)
