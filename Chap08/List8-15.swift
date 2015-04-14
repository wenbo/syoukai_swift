import Foundation

class FileAttr {
    let filename: String
    lazy var size:Int = self.getFileSize()
    init(file: String) {
        filename = file
    }
    func getFileSize() -> Int {
        var buffer = stat()
        stat(filename, &buffer)
        println("[getFileSize]")
        return Int(buffer.st_size)
    }
}

let d = FileAttr(file:"text.txt")
println(d.filename)
println(d.size)
println(d.size)
