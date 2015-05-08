#import "ImageViewController.h"
#import "Flower.h"

@interface ImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ImageViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:self.flower.imageName];
    self.textView.text = self.flower.details;                                   // добавила текстовое поле под картинкой с деталями о цветке
}



- (IBAction)didTapOnView:(id)sender {
   [self dismissViewControllerAnimated:YES completion:nil];           //спрятать вью контролер
}




@end
