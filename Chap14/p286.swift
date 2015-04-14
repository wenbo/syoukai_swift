import Darwin

var current = time(nil)
let jnow: tm = localtime(&current).memory   // 注意！
println("\(jnow.tm_mon + 1)月\(jnow.tm_mday)日")

let p = UnsafePointer<CChar>( ctime(&current) )
if let s = String.fromCString(p) { // オプショナル束縛構文
    print(s)
}
