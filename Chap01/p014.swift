var a = 10, b = 2

if a >= 0 {
    b = a
}else {
    b = -a
}
println("b=\(b)")

a = -1
if a >= 0 { b = a } else { b = -a }
println("b=\(b)")

a = -20
b = a >= 0 ? a : -a
println("b=\(b)")

/*
if a >= 0 {
    b = a
    {let t=a; a=c; c=t } // このような {} は許されない
}
*/
