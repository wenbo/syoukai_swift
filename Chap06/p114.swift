var day = (2, 11)

switch day {
case (1,1): println("元旦")
case (2,11): println("建国記念の日")
case (5,3): println("憲法記念日")
default: break
}

day = (5, 5)

switch day {
case(1,1...5): //1/1~1/5
        println("正月休み")
case (5,3): println("憲法記念日")
case (4,29), (5,2...6): // 4/29, または 5/2 ~ 5/6
        println("連休")
default: break
}

day = (8, 17)

switch day {
case (5,3): println("憲法記念日")
case (8, let d): println("8/\(d)は夏休みです")
default: break
}

var rect = (width:10, height:28)
switch rect {
case (month:10, day: let d): println("10月\(d)日")
case (width:_, height:let h): println("高さ=\(h)")
default: break
}
