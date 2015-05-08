#import <UIKit/UIKit.h>

@class Flower;

@interface FlowerCell : UITableViewCell
@property (nonatomic, strong) Flower* flower;

-(void)setupWithModel:(Flower *)flower;


@end
