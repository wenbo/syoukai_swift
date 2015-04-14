import Darwin
var current: time_t = time(nil)
var buff = [Int8](count: 26, repeatedValue: 0)
ctime_r(&current, &buff)
puts(buff)          // Tue Oct  5 01:21:47 2014 のように表示できる
// puts(&buff)      // & はあっても無くても同じ動作をする
