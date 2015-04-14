func findString(#key:String, words:[String]) -> Bool {
    for ch in words {
        if key == ch {
            return true
        }
    }
    return false
}

let conso = ["K", "S", "T", "N", "H", "M", "Y", "R", "W"]
println( findString(key:"Y", conso) ) // true
println( findString(key:"L", conso) ) // false
