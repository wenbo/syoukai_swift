func apply<T,U>(f:(T)->U, t:T) -> U {
    return f(t)
}

func spell() { println("void") }
func spell(a:Int) { println(a) }
func spell(a:Int, b:String) { println("\(a): \(b)") }
func spell(a:Int, b:String, c:Int) { println("\(a): \(b)\(c)") }

apply(spell, ())
apply(spell, 1)
apply(spell, (2, "Kongroo"))
apply(spell, (3, "FG", 204))

var psy: (Int) = 0
println(psy + 1)
