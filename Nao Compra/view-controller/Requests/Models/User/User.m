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


- (void) parseJSONDictionary:(NSDictionary *)dic
{
	// PARSER
	id id_ = [dic objectForKey:@"id"];
	if([id_ isKindOfClass:[NSNumber class]])
	{
		self.identifier = id_;
	}

	id cpf_ = [dic objectForKey:@"cpf"];
	if([cpf_ isKindOfClass:[NSString class]])
	{
		self.cpf = cpf_;
	}

	id created_at_ = [dic objectForKey:@"created_at"];
	if([created_at_ isKindOfClass:[NSString class]])
	{
		self.created_at = created_at_;
	}

	id updated_at_ = [dic objectForKey:@"updated_at"];
	if([updated_at_ isKindOfClass:[NSString class]])
	{
		self.updated_at = updated_at_;
	}

	id email_ = [dic objectForKey:@"email"];
	if([email_ isKindOfClass:[NSString class]])
	{
		self.email = email_;
	}

	
}

@end
