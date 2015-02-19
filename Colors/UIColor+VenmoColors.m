#import "UIColor+VenmoColors.h"
#import <Colours/Colours.h>

@implementation UIColor (VenmoColors)

#pragma mark - Grey colors

+ (UIColor *)ven_superLightGreyColor
{
    return [UIColor colorFromHexString:@"FAFBFC"];
}

+ (UIColor *)ven_veryLightGreyColor
{
    return [UIColor colorFromHexString:@"E7EBEE"];
}

+ (UIColor *)ven_lightGreyColor
{
    return [UIColor colorFromHexString:@"DEE2E5"];
}

+ (UIColor *)ven_greyColor
{
    return [UIColor colorFromHexString:@"707C7C"];
}

+ (UIColor *)ven_mediumGreyColor
{
    return [UIColor colorFromHexString:@"CACCCE"];
}

+ (UIColor *)ven_darkGreyColor
{
    return [UIColor colorFromHexString:@"262729"];
}

+ (UIColor *)ven_dividerGreyColor
{
    return [UIColor colorFromHexString:@"B7BDBD"];
}

+ (UIColor *)ven_composeGreyBackgroundColor
{
    return [UIColor colorFromHexString:@"F8F9FA"];
}


#pragma mark - Blue colors

+ (UIColor *)ven_venmoBlueColor
{
    return [UIColor colorFromHexString:@"3D95CE"];
}

+ (UIColor *)ven_mediumBlueGreyColor
{
    return [UIColor colorFromHexString:@"C0C9CF"];
}

+ (UIColor *)ven_lightBlueColor
{
    return [UIColor colorFromHexString:@"E9F4F9"];
}

+ (UIColor *)ven_buttonBlueColor
{
    return [UIColor colorFromHexString:@"509FD3"];
}

+ (UIColor *)ven_heartBlueColor
{
    return [UIColor colorFromHexString:@"3D94CE"];
}


#pragma mark - Drawer colors

+ (UIColor *)ven_drawerBackgroundColor
{
    return [UIColor colorFromHexString:@"333B42"];
}

+ (UIColor *)ven_drawerSelectedTextColor
{
    return [UIColor colorFromHexString:@"6EBDF7"];
}

+ (UIColor *)ven_drawerSelectedCellBackgroundColor
{
    return [UIColor colorFromHexString:@"485159"];
}

+ (UIColor *)ven_drawerTextColor
{
    return [UIColor colorFromHexString:@"C0C9CF"];
}

+ (UIColor *)ven_drawerLineColor
{
    return [UIColor colorFromHexString:@"485259"];
}


#pragma mark - Other colors

+ (UIColor *)ven_greenColor
{
    return [UIColor colorFromHexString:@"59BF39"];
}

+ (UIColor *)ven_redColor
{
    return [UIColor colorFromHexString:@"E91A1A"];
}

+ (UIColor *)ven_placeholderTextGreyColor
{
    return [UIColor colorFromHexString:@"C7CBCD"];
}

+ (UIColor *)ven_linkSelectedBlueColor
{
    return [UIColor colorFromHexString:@"355CC2"];
}

@end