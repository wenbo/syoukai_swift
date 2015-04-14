typealias CPtr = UnsafePointer<CChar>   // 記述しやすさのため
let argv = UnsafePointer<CPtr>(C_ARGV)
let args = UnsafeBufferPointer<CPtr>(start:argv, count:Int(C_ARGC))

var i = 0
for p in args {     // pは UnsafePointer<CChar>型（CPtr型）
    if let s = String.fromCString(p) {      // UTF-8文字列として評価
        println("\(i): \"\(s)\"")
    }
    ++i
}
