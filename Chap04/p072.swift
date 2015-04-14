var nagano : Int? = "1998".toInt()
if nagano != nil {
    println("Nagano: \(nagano!)")
}
if nagano == 2020 {
    println(2020)
}else if nagano == 1998 {
    println(1998)
}

var x: Int? = 1964
println( x > 2000 )
x = nil
println( x < 2000 )
