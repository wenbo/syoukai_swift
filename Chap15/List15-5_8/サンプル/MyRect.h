#import <Foundation/Foundation.h>

@interface MyRect : NSObject {
    NSPoint origin;
    NSPoint upperRight;
}
- (instancetype)initWithOrigin:(NSPoint)orig upperRight:(NSPoint)upr;
@property NSPoint origin;
@property NSPoint upperRight;
@end

