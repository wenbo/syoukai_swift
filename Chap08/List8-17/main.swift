var cam = WebCamera()
cam.focus = 4.0
println(cam.shutterSpeed)
cam.take()
// cam.shutterSpeed = 1.0 / 1000.0    // エラー。この代入はできない。
