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

- (void) parseJSONDictionary:(NSDictionary *)dic
{
	// PARSER
	id cpf_ = [dic objectForKey:@"cpf"];
	if([cpf_ isKindOfClass:[NSString class]])
	{
		self.cpf = cpf_;
	}

	id password_ = [dic objectForKey:@"password"];
	if([password_ isKindOfClass:[NSString class]])
	{
		self.password = password_;
	}

	id email_ = [dic objectForKey:@"email"];
	if([email_ isKindOfClass:[NSString class]])
	{
		self.email = email_;
	}

	id role_ = [dic objectForKey:@"role"];
	if([role_ isKindOfClass:[NSString class]])
	{
		self.role = role_;
	}

	
}

@end
