//
//  main.swift
//  サンプル
//
//  Created by 荻原 剛志 on 2014/10/15.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

import Foundation

let orig = NSPoint(x:0.0, y:12.0)
let ur = NSPoint(x:10.0, y:24.0)
var rect = MyRect(origin:orig, upperRight:ur)   // イニシャライザ
println("Origin: \(rect.origin.x), \(rect.origin.y)")
rect.origin.y += 1.5
println("Origin: \(rect.origin.x), \(rect.origin.y)")
