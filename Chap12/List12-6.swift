import Foundation

func select(list:[String], filter:String->Bool) -> ([String],[String]) {
    var sel = [String]()
    var des = [String]()
    for s in list {
        if filter(s) {
            sel.append(s)
        }else{
            des.append(s)
        }
    }
    return (sel, des)
}

let list = ["fig.pdf", "filelist1.swift", "OLD", "sample.swift"]
let t = select(list, {
    for ch in $0 {
        if ch == "." { return true }
    }
    return false
})
println(t)

// ファイル名を実際に読み込んで実行してみよう。

func filenames(#path: String) -> [String]? {
    let fm = NSFileManager.defaultManager()
    let fs = fm.contentsOfDirectoryAtPath(path, error: nil)
    return fs as [String]?
}

let flist:[String]! = filenames(path:".")
if flist != nil {
    println(flist)
    let t = select(flist, { $0.hasPrefix("List") } )
    println(t)
}
