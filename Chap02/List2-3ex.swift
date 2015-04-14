func charge(piece:Int, ロゴ logo:Int = 0, ルビ ruby:Int = 0) -> Int {
    var w = 2500
    if piece > 100 {
        w += (piece - 1) / 100 * 600
    }
    return w + logo * 500 + ruby * 100
}

println(charge(250))
/*
println(charge(90, logo:1))
println(charge(120, ruby:2))
println(charge(500, ruby:1, logo:2))
*/
println(charge(90, ロゴ:1))
println(charge(120, ルビ:2))
println(charge(500, ルビ:1, ロゴ:2))
