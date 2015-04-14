//
//  Magi.swift
//  RPGFighters
//
//  Created by 荻原 剛志 on 2014/10/17.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

import Foundation

class Magi : NSObject, Wizard {
    let name: String
    var magic: Int
    var magicSpell:String? = nil
    let attr: RPGAttributes = .Magician
    init(name:String, magic:Int) {
        self.name = name
        self.magic = magic
    }
    func spell(level: Int32) -> String {
        return magicSpell ?? "呪"
    }
}
