#import <venmo-ios-colors/UIColor+VenmoColors.h>
#import <Colours/Colours.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

SpecBegin(UIImage_VenmoColors)

describe(@"ven_venmoBlueColor", ^{
    it(@"should really be Venmo Blue™", ^{
        UIColor *venmoBlue = [UIColor ven_venmoBlueColor];
        expect([venmoBlue red]).to.equal(61/255.0f);
        expect([venmoBlue green]).to.equal(149/255.0f);
        expect([venmoBlue blue]).to.equal(206/255.0f);
    });
});

SpecEnd