#import "ViewController.h"
#import "ImageViewController.h"
#import "Flower.h"
#import "FlowerCell.h"

@interface ViewController () <UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

//    self.tableView.dataSource=self;
//    self.tableView.delegate=self;             //просто пример, сделали уже привязками в сторибордах 

//    self.data = @[@"Astra", @"Gladiolus", @"Hrizantema", @"Krokus", @"Roza", @"Tulpan"];
//    self. images = @[@"astra.jpg", @"gladi.jpg", @"hriza.jpg", @"krokus.jpg", @"rose", @"tulip.jpg"];
    
    [self loadData];
    [self.tableView registerNib:[UINib nibWithNibName:@"FlowerCell" bundle:nil] forCellReuseIdentifier:@"FlowerCell"];

}


-(void)loadData{

    NSMutableArray *tmp = [[NSMutableArray alloc] init];

    UIColor *color =[UIColor colorWithRed:1.f green:0.87f blue:0.16f alpha:1];
    Flower* flower = [[Flower alloc] initWithName:@"Astra" imageName:@"astra.jpg" details:NSLocalizedString(@"asrtra.description", nil) isWild:NO color:(UIColor *) color];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.89f green:0.27f blue:0.56f alpha:1];
    flower = [[Flower alloc] initWithName:@"Rosa" imageName:@"rose" details:NSLocalizedString(@"rose.description", nil) isWild:NO color:(UIColor*)color];
    [tmp addObject:flower];

    color =[UIColor colorWithRed:0.17f green:0.91f blue:0.17f alpha:1];
    flower = [[Flower alloc] initWithName:@"Gladiolus" imageName:@"gladi.jpg" details:NSLocalizedString(@"gladi.description", nil)  isWild:YES color:(UIColor *)color];
    [tmp addObject:flower];

    color= [UIColor colorWithRed:0.19f green:0.83f blue:0.93f alpha:1];
    flower = [[Flower alloc] initWithName:@"Tulpan" imageName:@"tulip.jpg" details:NSLocalizedString(@"tulip.description", nil) isWild:NO color:(UIColor*)color];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.49f green:0.5f blue:0.85f alpha:1];
    flower = [[Flower alloc] initWithName:@"Krokus" imageName:@"krokus.jpg" details:NSLocalizedString(@"krokus.description", nil) isWild:NO color:(UIColor*)color];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.9f green:0.63f blue:0.83f alpha:1];
    flower = [[Flower alloc] initWithName:@"Hrizantema" imageName:@"hriza.jpg" details:NSLocalizedString(@"hriza.description", nil) isWild:YES color:(UIColor *) color];
    [tmp addObject:flower];
    
    color = [UIColor colorWithRed:0.8f green:0.36f blue:0.38f alpha:1];
    flower = [[Flower alloc] initWithName:@"Lilien" imageName:@"lilien.jpg" details:NSLocalizedString(@"lilien.description", nil) isWild:YES color:(UIColor *) color];
    [tmp addObject:flower];

    color = [UIColor colorWithRed:0.79f green:0.63f blue:0.18f alpha:1];
    flower = [[Flower alloc] initWithName:@"Kaktus" imageName:@"kaktus.jpg" details:NSLocalizedString(@"kaktus.description", nil) isWild:YES color:(UIColor *) color];
    [tmp addObject:flower];


    self.data = tmp;


}





- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    FlowerCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"FlowerCell" forIndexPath:indexPath];    //get cell

    Flower *flower = self.data [indexPath.row] ;//get flower iz massiva

    [cell setupWithModel:flower];         //apply flower to cell

    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   NSLog (@"Tapped at row with title: %@", self.data[indexPath.row]);
   [tableView deselectRowAtIndexPath:indexPath animated:YES];

    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ImageViewController *imageViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ImageViewController"];

    Flower* flower = self.data [indexPath.row] ;
    imageViewController.flower = flower;

    [self presentViewController: imageViewController animated:YES completion:nil];


}




@end
