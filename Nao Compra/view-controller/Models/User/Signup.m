//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "user_signup.h"


@implementation user_signup


@synthesize cpf;
@synthesize password;
@synthesize email;
@synthesize role;


- (void) dealloc
{
	[cpf release];
	[password release];
	[email release];
	[role release];
	
	[super dealloc];

}

- (id) initWithJSONDictionary:(NSDictionary *)dic
{
	if(self = [super init])
	{
		[self parseJSONDictionary:dic];
	}
	
	return self;
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
