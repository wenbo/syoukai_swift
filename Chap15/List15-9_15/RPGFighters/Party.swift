//
//  Party.swift
//  RPGFighters
//
//  Created by 荻原 剛志 on 2014/10/17.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

import Foundation

@objc protocol Wizard : Membership {
    var magic: Int { get set }
    optional func spell(level:Int) -> String
}

class Party : NSObject {
    var members: [Membership] = []
    override init() {
        members = []
        super.init()
    }
    func printAll() {
        for who in members {
            var s = ""
            switch who.attr {
            case .Warrior: s = "戦士"
            case .Magician: s = "魔法使い"
            case .Ninja: s = "忍者"
            }
            print("名前: \(who.name), 属性: " + s)
            if let mag = who as? Wizard {
                print(", 魔力: \(mag.magic)")
                if let word = mag.spell?(0) {
                    print(", 呪文: " + word)
                }
            }else if let memb = who as? Member {
                print(", 体力: \(memb.power)")
            }
            println()
        }
        println()
    }
    func append(one: AnyObject) {
        if let p = one as? Membership {
            members.append(p)
        }else if let dic = one as? Dictionary<String,AnyObject> {
            let name:String? = dic["Name"] as? String
            if name == nil { return } // Error
            if let magic = dic["Magic"] as? Int {
                var w = Magi(name:name!, magic:magic)
                if let phrase = dic["Spell"] as? String {
                    w.magicSpell = phrase
                }
                members.append(w)
            }else {
                let who = Member(name:name!, attribute:.Warrior)
                if let power = dic["Power"] as? Int {
                    who.power = power
                }
                members.append(who)
            }
        }
    }
}
