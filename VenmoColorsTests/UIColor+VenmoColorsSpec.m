#import <venmo-ios-colors/UIColor+VenmoColors.h>

SpecBegin(UIColor_VenmoColors)

__block UIView *view;

beforeEach(^{
    view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
});

describe(@"ven_venmoBlueColor", ^{
    it(@"should really be Venmo Blue™", ^{
        view.backgroundColor = [UIColor ven_venmoBlueColor];
        expect(view).to.haveValidSnapshot();
    });
});

SpecEnd
