let val = 10032
var i = 1, mask = 2
while mask <= val {
    mask <<= 1       // maskを1ビットずらす
    ++i
} // ループを出た時のiが、求めるビット数

println(i)
