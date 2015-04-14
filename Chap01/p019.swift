for n in [ 0, 2, 4, 6, 8] {

switch n {
case 0: println("none")
// case 1:      // Error
case 2, 3:
    println("a few")
case 4, 5:
    println("several")
case 6: break
default:
    println("several")
}

}

let 追試下限 = 45
var score = 65 // たとえば得点が65点なら
switch score {
case 追試下限..<75: println("追試験") // 65点ならここを実行
case 90...100: println("秀")
case 80..<90: println("優")
case 70..<80: println("良")
case 60..<70: println("可")
default:println("不可")
}
