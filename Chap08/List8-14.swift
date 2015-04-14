import Foundation

class ReadWord {
    var fp: UnsafeMutablePointer<FILE> = nil
    init?(open:String) {
        fp = fopen(open, "r")
        if fp == nil { return nil }
    }
    deinit {
        println("[[deinit]]")
        self.close()
    }
    func close() {
        if fp != nil {
            fclose(fp)
            fp = nil
        }
    }
    func nextWord() -> String? {
        var ch:Int
        do {
            ch = Int( fgetc(fp) )
            if ch < 0 { // EOF
                return nil
            }
        }while ch <= 0x20 // SP
        var s = String(UnicodeScalar(ch))
        while true {
            ch = Int( fgetc(fp) )
            if ch <= 0x20 {
                break
            }
            s.append(UnicodeScalar(ch))
        }
        return s
    }
}

func readIt() {
    if let reader = ReadWord(open:"text.txt") {
        while let w = reader.nextWord() {
            if w == "Q!" {
                return
            }
            print(w + " ")
        }
        println("(EOF)")
        reader.close()
    }
}

readIt()
