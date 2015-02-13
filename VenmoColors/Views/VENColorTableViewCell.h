#import <UIKit/UIKit.h>

extern CGFloat const VENColorTableViewCellHeight;

@interface VENColorTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
