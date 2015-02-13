#import <UIKit/UIKit.h>

@interface UIColor (Venmo)

#pragma mark - Grey colors

+ (UIColor *)ven_superLightGreyColor;
+ (UIColor *)ven_veryLightGreyColor;
+ (UIColor *)ven_lightGreyColor;
+ (UIColor *)ven_greyColor;
+ (UIColor *)ven_mediumGreyColor;
+ (UIColor *)ven_darkGreyColor;
+ (UIColor *)ven_dividerGreyColor;


#pragma mark - Other colors

+ (UIColor *)ven_venmoBlueColor;
+ (UIColor *)ven_greenColor;
+ (UIColor *)ven_redColor;

+ (UIColor *)ven_mediumBlueGreyColor;
+ (UIColor *)ven_lightBlueColor;

+ (UIColor *)ven_drawerBackgroundColor;
+ (UIColor *)ven_drawerSelectedTextColor;
+ (UIColor *)ven_drawerSelectedCellBackgroundColor;
+ (UIColor *)ven_drawerTextColor;
+ (UIColor *)ven_drawerLineColor;

+ (UIColor *)ven_buttonBlueColor;

+ (UIColor *)ven_viewBackgroundColor;

+ (UIColor *)ven_composeGreyBackgroundColor;
+ (UIColor *)ven_greyTexture;
+ (UIColor *)ven_placeholderTextColor;
+ (UIColor *)ven_linkSelectedColor;
+ (UIColor *)ven_heartGrey;
+ (UIColor *)ven_heartBlue;

+ (UIColor *)colorFromString:(NSString *)string;

@end