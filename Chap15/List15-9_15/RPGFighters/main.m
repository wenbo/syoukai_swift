//
//  main.m
//  RPGFighters
//
//  Created by 荻原 剛志 on 2014/10/17.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Member.h"
#import "RPGFighters-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id myteam = [[Party alloc] init];
        [myteam append: @{@"Name":@"龍之介"}];
        Member *m = [[Member alloc] initWithName:@"Rita"
                                 attribute:RPGAttributesNinja];
        m.power = 100;
        [myteam append: m];
        [myteam append:
            @{@"Name":@"Maid", @"Magic":@(90), @"Spell":@"接続拒否"}];
        [myteam printAll];
    }
    return 0;
}
