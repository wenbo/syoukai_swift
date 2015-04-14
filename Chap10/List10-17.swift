enum WeekDay: Int, ForwardIndexType {
    case Sun, Mon, Tue, Wed, Thu, Fri, Sat
    case _dummy
    func successor() -> WeekDay {
        if self == ._dummy {
            return ._dummy
        }
        return WeekDay(rawValue: self.rawValue + 1)!
    }
}

var d = WeekDay.Sun
println(d.rawValue)
println(d.successor().rawValue)

var r = Range<WeekDay>(start:.Mon, end:.Fri)
for i in WeekDay.Sun ... WeekDay.Sat {
    print(" \(i.rawValue)")
}
println()

for i in WeekDay.Mon ... .Sat {
    print(" \(i.rawValue)")
}
println()

var arr = [WeekDay](.Mon ... .Fri)
println(arr)
