func printInts(label:String, params: Int...) {
     print(label)
     for v in params {
         print(" \(v)")
    }
    println()
}

printInts("Output:", 3, 1, 4, 6, 7) // Output: 3 1 4 6 7
printInts("Zero:")                  // Zero:
