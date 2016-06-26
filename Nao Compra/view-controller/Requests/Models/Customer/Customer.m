#import "Customer.h"

@implementation Customer

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"gender":@"gender",
             @"initial_age":@"initial_age",
             @"final_age":@"final_age"
             };
}

@end