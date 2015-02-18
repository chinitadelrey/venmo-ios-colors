#import "VENColorsTableViewController.h"
#import <objc/objc-runtime.h>
#import "VENColorTableViewCell.h"

static NSString *const VENColorsPrefix = @"ven_";

@interface VENColorsTableViewController ()

@property (nonatomic, strong) NSArray *colors;

@end

@implementation VENColorsTableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        _colors = [[self class] colorSelectorNames];
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


#pragma mark - Helper Methods

+ (NSArray *)colorSelectorNames
{
    Class currentClass = [UIColor class];
    unsigned int methodCount;
    Method *methodList = class_copyMethodList(object_getClass(currentClass), &methodCount);
    NSMutableArray *selectorNames = [[NSMutableArray alloc] initWithCapacity:methodCount];
    for (NSUInteger i = 0; i < methodCount; i++) {
        NSString *methodName = [NSString stringWithCString:sel_getName(method_getName(methodList[i]))
                                                  encoding:NSUTF8StringEncoding];
        if ([methodName hasPrefix:VENColorsPrefix]) {
            [selectorNames addObject:methodName];
        }
    }
    free(methodList);

    return [NSArray arrayWithArray:selectorNames];
}


@end
