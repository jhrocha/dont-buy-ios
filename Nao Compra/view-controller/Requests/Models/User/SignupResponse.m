#import "SignupResponse.h"
#import "User.h"


@implementation SignupResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
      @"user":@"user",
      @"token":@"token",
      @"role":@"role"
      };
}
+ (NSValueTransformer *)userJSONTransformer {
    
    return [MTLJSONAdapter dictionaryTransformerWithModelClass: [User class]];
}
@end
