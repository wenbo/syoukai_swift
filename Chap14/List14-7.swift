import Foundation

func readfile(path:String) -> NSString? {
    var err: NSError? = nil
    var cont = NSString(contentsOfFile:path,
                  encoding:NSASCIIStringEncoding,       // ASCIIコード
                  error: &err)      // ポインタの渡し方に注意！
    if cont == nil {
        println( err?.localizedDescription ?? "Error")  // エラー表示
    }
    return cont
}

var s = readfile("nobody")
