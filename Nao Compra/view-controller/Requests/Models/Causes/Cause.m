#import "Cause.h"
#import "Customer.h"


@implementation Cause

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"identifier":@"id",
             @"visited_at":@"visited_at",
             @"created_at":@"created_at",
             @"updated_at":@"updated_at",
             @"desc":@"description",
             @"question":@"question",
             @"answer":@"answer",
             @"customer":@"customer"
             };
}

+ (NSValueTransformer *)customerJSONTransformer {
    
    return [MTLJSONAdapter dictionaryTransformerWithModelClass: [Customer class]];
}

@end
