//
//  main.swift
//  サンプル
//
//  Created by 荻原 剛志 on 2014/10/15.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

import Foundation

var buf = [Double](count:4, repeatedValue:0)
if readnums(4, &buf) == 4 {
    let orig = NSPoint(x:buf[0], y:buf[1])
    let ur = NSPoint(x:buf[2], y:buf[3])
    var rect = SRect(name:"Custom", origin:orig, upperRight:ur)
    println(rect)
}
