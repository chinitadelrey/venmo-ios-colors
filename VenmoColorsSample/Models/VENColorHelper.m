#import "VENColorHelper.h"
#import <objc/objc-runtime.h>

static NSString *const VENColorsPrefix = @"ven_";

@implementation VENColorHelper

+ (NSArray *)venmoColors
{
    unsigned int methodCount;
    Method *methodList = class_copyMethodList(object_getClass([UIColor class]), &methodCount);
    NSMutableArray *selectorNames = [[NSMutableArray alloc] initWithCapacity:methodCount];
    for (NSUInteger i = 0; i < methodCount; i++) {
        NSString *methodName = [NSString stringWithCString:sel_getName(method_getName(methodList[i]))
                                                  encoding:NSUTF8StringEncoding];
        if ([methodName hasPrefix:VENColorsPrefix]) {
            [selectorNames addObject:methodName];
        }
    }
    free(methodList);

    return [NSArray arrayWithArray:selectorNames];
}

@end
