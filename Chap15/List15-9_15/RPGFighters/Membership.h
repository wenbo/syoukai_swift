//
//  Membership.h
//  RPGFighters
//
//  Created by 荻原 剛志 on 2014/10/17.
//  Copyright (c) 2014年 Takeshi OGIHARA. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, RPGAttributes) {
    RPGAttributesWarrior,
    RPGAttributesMagician,
    RPGAttributesNinja
};

@protocol Membership <NSObject>
@property (retain,readonly) NSString *name;
@property (readonly) RPGAttributes attr;
@end
