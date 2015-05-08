#import "Flower.h"

@implementation Flower


- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName details:(NSString *)details isWild:(BOOL)isWild  color:(UIColor*)color
{
    self = [super init];
    if (self) {
        self.name = name;
        self.imageName = imageName;
        self.details = details;
        self.isWild = isWild;
        self.color = color;
    }
    
    return self;
}

@end
