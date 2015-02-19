#import <venmo-ios-colors/UIColor+VenmoColors.h>
#import <EDColor/UIColor+Hex.h>
#import "VENColorHelper.h"

SpecBegin(UIColor_VenmoColors)

describe(@"ven_venmoBlueColor", ^{

    it(@"should really be Venmo Blue™", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        view.backgroundColor = [UIColor ven_venmoBlueColor];
        expect(view).to.haveValidSnapshot();
    });
});

describe(@"colorWithHexString:", ^{

    it(@"should only be passed strings that are valid 32 bit hexidecimal digits", ^{
        id colorClassMock = [OCMockObject mockForClass:[UIColor class]];
        NSString *hexRegex = @"^([A-Fa-f0-9]{6})$";

        for (NSString *selectorName in [VENColorHelper venmoColors]) {
            [[colorClassMock expect] colorWithHexString:[OCMArg checkWithBlock:^BOOL(NSString *hexString) {
                NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", hexRegex];
                return [predicate evaluateWithObject:hexString];
            }]];

            [[UIColor class] performSelector:NSSelectorFromString(selectorName)];

            [colorClassMock verify];
        }
    });
});

SpecEnd
