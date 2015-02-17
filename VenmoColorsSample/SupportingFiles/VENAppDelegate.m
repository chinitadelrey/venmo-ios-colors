#import "VENAppDelegate.h"
#import "VENColorsTableViewController.h"

@implementation VENAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    VENColorsTableViewController *colorsViewController = [[VENColorsTableViewController alloc] init];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:colorsViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end