//
//  Member.h
//  RPGFighters
//
//  Created by 荻原 剛志 on 2014/10/17.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Membership.h"

@interface Member : NSObject <Membership>
- (instancetype)initWithName:(NSString *)who attribute:(RPGAttributes)val;
@property NSInteger power;
@end
