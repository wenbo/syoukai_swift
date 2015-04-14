// import Foundation

let list = ["fig.pdf", "filelist1.swift", "OLD", "sample.swift"]

let slist = list.sorted( {
    (a:String, b:String) -> Bool in a < b } )
println(slist)

let s2 = list.sorted( { $0 < $1 } )
println(s2)

let s3 = list.sorted( < )
println(s3)

// Foundationをインポートするとこれは動作エラーを起こします
let s4 = list.sorted( { $0 > $1 } )
println(s4)

let source = list.filter( { $0.hasSuffix(".swift") } )
println(source)
