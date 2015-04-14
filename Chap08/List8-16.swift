import Foundation

class FileAttr {
    let filename: String
    lazy var size: Int = {
        var buffer = stat()
        stat(self.filename, &buffer)
        println("[getFileSize]")
        return Int(buffer.st_size)
    }()
    init(file: String) {
        filename = file
    }
}

let d = FileAttr(file:"text.txt")
println(d.filename)
println(d.size)
println(d.size)
