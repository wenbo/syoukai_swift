func +(l:String,r:Int)->String{return l+String(UnicodeScalar(r))}
var v=String(),n=v+34+44+10+34,s=("var v=String(),n=v+34+44+10+34,s=(",
"func +(l:String,r:Int)->String{return l+String(UnicodeScalar(r))}",
"v=s.0+34+s.0+n+s.1+n+s.2+34+41+10;println(s.1+10+v+s.2)")
v=s.0+34+s.0+n+s.1+n+s.2+34+41+10;println(s.1+10+v+s.2)
