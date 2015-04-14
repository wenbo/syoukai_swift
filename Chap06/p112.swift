let img = ("phoenix.png", 1200, 800)
let photo = (file:"tiger.jpg", width:640, height:800)
println(img)
println(photo)
var v1 : (String, Int, Int) = img
var v2 : (file:String, width:Int, height:Int) = img
var v3 : (image:String, x:Int, y:Int) = img
v1 = photo
v2 = photo
// v3 = photo  // エラーになる
println("v1 = \(v1)")
println("v2 = \(v2)")

v3 = photo as (image:String, x:Int, y:Int)
// v3 = photo as (String, Int, Int)
println("v3 = \(v3)")

var x = 0, y = 0, z = 0
(red:x, green:y, blue:z) = (blue:5, red:250, green:220)
println((x,y,z))
var t: (red:Int, green:Int, blue:Int) = (blue:80, 0, 200)
println(t)

typealias PhotoFile = (file:String, width:Int, height:Int)
typealias ImageInfo = (image:String, x:Int, y:Int)
var w: PhotoFile = ("snake.png", width:768, height:1024)
println(w.file)
