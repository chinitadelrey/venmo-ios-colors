#import <venmo-ios-colors/UIColor+VenmoColors.h>

SpecBegin(UIColor_VenmoColors)

describe(@"ven_venmoBlueColor", ^{
    it(@"should really be Venmo Blue™", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        view.backgroundColor = [UIColor ven_venmoBlueColor];
        expect(view).to.haveValidSnapshot();
    });
});

SpecEnd
