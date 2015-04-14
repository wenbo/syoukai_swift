import Darwin

var current = time(nil)
let jnow: tm = localtime(&current).memory   // 注意！
println("\(jnow.tm_mon + 1)月\(jnow.tm_mday)日")

let p = ctime(&current)     // p は UnsafeMutablePointer<Int8>型
for i in 0..<25 {
    print(UnicodeScalar(UInt8(p[i])))
}
