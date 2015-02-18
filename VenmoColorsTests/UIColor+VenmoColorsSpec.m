#import <venmo-ios-colors/UIColor+VenmoColors.h>
#import <Colours/Colours.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>

SpecBegin(UIImage_VenmoColors)

__block UIView *colorView;

beforeEach(^{
    colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
});

    it(@"should really be Venmo Blue™", ^{
        colorView.backgroundColor = [UIColor ven_venmoBlueColor];
        expect(colorView).to.haveValidSnapshot();
    });

SpecEnd