infix operator ⊽ {
    precedence 110      // 演算子||と同じ
    associativity left
}

func ⊽ (lhs:Bool, rhs:@autoclosure() -> Bool) -> Bool {
    if lhs { return false }
    return !rhs()
}


func b(t:Int) -> Bool {
    println(t)
    return t & 1 == 1
}

println( b(0) ⊽ b(2) )
println( b(4) ⊽ b(5) )
println( b(7) ⊽ b(8) )
println( b(9) ⊽ b(11) )
