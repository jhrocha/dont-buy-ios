#import "User.h"


@implementation User

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"id":@"identifier",
             @"cpf":@"cpf",
             @"created_at":@"created_at",
             @"updated_at":@"updated_at",
             @"email":@"email"
             };

}


@end
