#import "VENAppDelegate.h"
#import "VENColorsTableViewController.h"

@interface VENAppDelegate ()

@end

@implementation VENAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    VENColorsTableViewController *colorsViewController = [[VENColorsTableViewController alloc] init];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:colorsViewController];
    self.window.frame = [UIScreen mainScreen].bounds;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
