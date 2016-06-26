#import "Cause.h"
#import "Customer.h"


@implementation Cause

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"description":@"description",
             @"question":@"question",
             @"answer":@"answer",
             @"customer":@"customer"
             };
}

@end
