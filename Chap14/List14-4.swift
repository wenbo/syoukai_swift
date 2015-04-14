for var i = 0; i < Int(C_ARGC); i++ {
    if let s = String.fromCString(C_ARGV[i]) {
        println("\(i): \"\(s)\"")
    }
}
