#import "Signup.h"

@implementation Signup

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"email":@"email",
             @"password":@"password",
             @"cpf":@"cpf",
             @"role":@"role"
             };
}
@end
