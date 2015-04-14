import Cocoa // MacでAppKitフレームワークを使う

var landscape : Bool { // 定数sizeにディスプレイの大きさを得る
    let size = NSScreen.mainScreen()!.frame.size
    return size.width > size.height
}

println( landscape ? "Landscape" : "Portrait" )
