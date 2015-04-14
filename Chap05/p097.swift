let arr1 = [Int](0..<20)
let arr2 = [Double](stride(from: 20.0, through:0.0, by:-0.5))
println(arr1)
println(arr2)

var data = [Double](count:10, repeatedValue:0.0)
println(data)

var s = ["壱", "弐", "参"]
s.insert("零", atIndex:0)
println(s) // [零, 壱, 弐, 参] を出力

let one = s.removeAtIndex(1) // s = [零, 壱, 弐, 参] とすると
println("\(one), \(s)")      // 壱, [零, 弐, 参] を出力

var p = ["Mercury", "Venus", "Jupiter"]
p.sort( { $0 < $1 } )
println(p)
