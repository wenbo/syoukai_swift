let m = ("monkey.jpg", 161_022_874)
// let m : (String, Int) = ("monkey.jpg", 161_022_874)

let cat = ("cat.jpg", 1024, 768)
var img : (String, Int, Int) = cat
// img = m   // エラー。型が異なる

println("\(img.0): \(img.1)x\(img.2)")
img.2 = 800
println("\(img.1)x\(img.2)")

// (1, 2) == (1, 2)  // エラー

let photo = ("tiger.jpg", 640, 800)
let (file, width, height) = photo
println("\(file): \(width)x\(height)") // tiger.jpg: 640x800

let pic = ("snake.png", (768, 1024))
let (f, (w, h)) = pic
let (name, _) = pic
println("\(name): \(w)x\(h)")

var x = 100, y = 0
println("x=\(x), y=\(y)")
(x, y) = (y, x)
println("x=\(x), y=\(y)")
