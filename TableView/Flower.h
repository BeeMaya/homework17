#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Flower : NSObject

@property(nonatomic, strong)NSString* name;
@property(nonatomic, strong)NSString* imageName;
@property(nonatomic, strong)NSString* details;
@property(nonatomic, strong)NSString* price;
@property(nonatomic, strong)UIColor* color;
@property(nonatomic) BOOL isWild;

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName details:(NSString *)details isWild:(BOOL)isWild color:(UIColor*)color;

@end
