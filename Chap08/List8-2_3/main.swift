var array = [Time]()
array.append(Time(hour:13, min:10))
array.append(Time12(hour:13, min:20))
array.append(Time12(hour:13, min:30))
for t in array {
    if t is Time12 { print(">") }
    println(t.description())
}
if let u = array[2] as? Time12 {
    println(u.pm ? "PM" : "AM")
}
