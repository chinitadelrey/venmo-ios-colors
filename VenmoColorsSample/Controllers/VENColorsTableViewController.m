#import "VENColorsTableViewController.h"
#import "VENColorTableViewCell.h"
#import "VENColorHelper.h"

@interface VENColorsTableViewController ()

@property (nonatomic, strong) NSArray *colors;

@end

@implementation VENColorsTableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        _colors = [VENColorHelper venmoColors];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Venmo Colors", nil);

    NSString *cellClassString = NSStringFromClass([VENColorTableViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:cellClassString bundle:nil]
         forCellReuseIdentifier:cellClassString];
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *colorSelectorName = self.colors[indexPath.row];
    VENColorTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass([VENColorTableViewCell class])
                                                                       forIndexPath:indexPath];
    cell.nameLabel.text = colorSelectorName;
    
    cell.colorView.backgroundColor = [[UIColor class] performSelector:NSSelectorFromString(colorSelectorName)];
    return cell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return VENColorTableViewCellHeight;
}


@end
