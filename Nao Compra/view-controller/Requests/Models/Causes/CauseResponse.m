#import "CauseResponse.h"
#import "Customer.h"


@implementation CauseResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cause":@"cause",
             @"customer":@"customer"
             };
}

+ (NSValueTransformer *)customerJSONTransformer {
    
    return [MTLJSONAdapter dictionaryTransformerWithModelClass: [Customer class]];
}

+ (NSValueTransformer *)causeJSONTransformer {
    
    return [MTLJSONAdapter dictionaryTransformerWithModelClass: [Cause class]];
}
@end
