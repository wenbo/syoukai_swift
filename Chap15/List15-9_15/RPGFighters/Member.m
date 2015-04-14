//
//  Member.m
//  RPGFighters
//
//  Created by 荻原 剛志 on 2014/10/17.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

#import "Member.h"

@implementation Member
@synthesize name, attr, power;

- (instancetype)initWithName:(NSString *)who attribute:(RPGAttributes)val
{
    if ((self = [super init]) != nil) {
        name = who;
        attr = val;
        power = 10;
    }
    return self;
}

@end
