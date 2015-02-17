#import "UIColor+Venmo.h"

@implementation UIColor (Venmo)

#pragma mark - Grey colors

+ (UIColor *)ven_superLightGreyColor
{
    return [UIColor colorWithRed:250/255.0f green:251/255.0f blue:252/255.0f alpha:1.0f];
}

+ (UIColor *)ven_veryLightGreyColor
{
    return [UIColor colorWithRed:231/255.0f green:235/255.0f blue:238/255.0f alpha:1.0f];
}

+ (UIColor *)ven_lightGreyColor
{
    return [UIColor colorWithRed:222/255.0f green:226/255.0f blue:229/255.0f alpha:1];
}

+ (UIColor *)ven_greyColor
{
    return [UIColor colorWithRed:112/255.0f green:124/255.0f blue:124/255.0f alpha:1.0f];
}

+ (UIColor *)ven_mediumGreyColor
{
    return [UIColor colorWithRed:202/255.0f green:204/255.0f blue:206/255.0f alpha:1.0f];
}

+ (UIColor *)ven_darkGreyColor
{
    return [UIColor colorWithRed:38/255.0f green:39/255.0f blue:41/255.0f alpha:1.0f];
}

+ (UIColor *)ven_dividerGreyColor
{
    return [UIColor colorWithRed:183/255.0f green:189/255.0f blue:189/255.0f alpha:1.0f];
}

+ (UIColor *)ven_composeGreyBackgroundColor
{
    return [UIColor colorWithRed:248/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
}

+ (UIColor *)ven_greyTexture
{
    return [UIColor ven_veryLightGreyColor];
}


#pragma mark - Grey colors

+ (UIColor *)ven_venmoBlueColor
{
    return [UIColor colorWithRed:61/255.0f green:149/255.0f blue:206/255.0f alpha:1.0f];
}

+ (UIColor *)ven_mediumBlueGreyColor
{
    return [UIColor colorWithRed:192/255.0f green:201/255.0f blue:207/255.0f alpha:1.0f];
}

+ (UIColor *)ven_lightBlueColor
{
    return [UIColor colorWithRed:233/255.0f green:244/255.0f blue:249/255.0f alpha:1.0f];
}

+ (UIColor *)ven_buttonBlueColor
{
    return [UIColor colorWithRed:80/255.0f green:159/255.0f blue:211/255.0f alpha:1.0f];
}

+ (UIColor *)ven_heartBlueColor
{
    return [UIColor colorWithRed:61/255.0f green:148/255.0f blue:206/255.0f alpha:0.7f];
}


#pragma mark - Drawer colors

+ (UIColor *)ven_drawerBackgroundColor
{
    return [UIColor colorWithRed:51/255.0 green:59/255.0 blue:66/255.0 alpha:1.0];
}

+ (UIColor *)ven_drawerSelectedTextColor
{
    return [UIColor colorWithRed:110/255.0 green:189/255.0 blue:247/255.0 alpha:1.0];
}

+ (UIColor *)ven_drawerSelectedCellBackgroundColor
{
    return [UIColor colorWithRed:72/255.0 green:81/255.0 blue:89/255.0 alpha:1.0];
}

+ (UIColor *)ven_drawerTextColor
{
    return [UIColor colorWithRed:192/255.0 green:201/255.0 blue:207/255.0 alpha:1.0];
}

+ (UIColor *)ven_drawerLineColor
{
    return [UIColor colorWithRed:72/255.0 green:82/255.0 blue:89/255.0 alpha:1.0];
}


#pragma mark - Other colors

+ (UIColor *)ven_greenColor
{
    return [UIColor colorWithRed:89/255.0f green:191/255.0f blue:57/255.0f alpha:1.0f];
}

+ (UIColor *)ven_redColor
{
    return [UIColor colorWithRed:233/255.0f green:26/255.0f blue:26/255.0f alpha:1.0f];
}

+ (UIColor *)ven_placeholderTextGreyColor
{
    return [UIColor colorWithRed:199/255.0 green:203/255.0 blue:205/255.0 alpha:1.0];
}

+ (UIColor *)ven_linkSelectedBlueColor
{
    return [UIColor colorWithRed:0.87f*62/255.0f green:0.87f*106/255.0f blue:0.87f*224/255.0f alpha:1];
}

@end