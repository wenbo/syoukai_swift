struct RunningAverage {
    var buffer = [Double]()
    var valid = false
    var average = 0.0
    var value: Double {
        mutating get {
            if !valid {
                var v = 0.0
                for t in buffer {
                    v += t
                }
                average = v / Double(buffer.count)
                valid = true
            }
            return average
        }
        set {
            buffer.append(newValue)
            if buffer.count > 5 {
                buffer.removeAtIndex(0)
            }
            valid = false
        }
    }
    init() { }
}

var temp = RunningAverage()
temp.value = 32.5
temp.value = 33.3
println(temp.value)
temp.value = 31.8
temp.value = 34.0
temp.value = 29.9
println(temp.value)
temp.value = 31.0
println(temp.value)
