#import "MyRect.h"

@implementation MyRect

- (instancetype)initWithOrigin:(NSPoint)orig upperRight:(NSPoint)upr {
    if ((self = [super init]) == nil)
        return nil;
    origin = orig;
    upperRight = upr;
    return self;
}
@synthesize origin, upperRight;
@end

