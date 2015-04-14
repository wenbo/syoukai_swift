
//
//  Actor.swift
//  Tapping
//
//  Created by 荻原 剛志 on 2014/10/18.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

import Foundation
import UIKit

class Actor : NSObject {
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var button2nd: UIButton!
    override init() {
        super.init()
    }
    @IBAction func tapped(sender: UIButton!) {
        text.text = "おはようございます"
        button2nd.addTarget(self, action:"knocked:",
            forControlEvents:.TouchUpInside)
    }
    @IBAction func knocked(sender: UIButton!) {
        text.text = "ごきげんよう"
        var sel = Selector("clearText:")
        NSTimer.scheduledTimerWithTimeInterval(1.0, target:self,
            selector:sel, userInfo: nil, repeats: false)
        // NSTimer.scheduledTimerWithTimeInterval(1.0, target:self,
        // selector: "clearText:", userInfo: nil, repeats: false)
    }
    func clearText(_: AnyObject!) {
        text.text = ""
    }
}
