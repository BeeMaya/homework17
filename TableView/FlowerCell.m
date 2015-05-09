#import "FlowerCell.h"
#import "Flower.h"

@interface FlowerCell()
@property (weak, nonatomic) IBOutlet UIImageView *flowerImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation FlowerCell

- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

- (void)setupWithModel:(Flower *)flower {
   self.flower = flower;
   self.titleLabel.text = flower.name;
   self.descriptionLabel.text = flower.details;
   self.flowerImageView.image = [UIImage imageNamed:flower.imageName];
   self.descriptionLabel.backgroundColor = flower.color;
}


@end
