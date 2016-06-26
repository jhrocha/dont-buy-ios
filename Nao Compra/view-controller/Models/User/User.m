//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "User.h"


@implementation User


@synthesize id;
@synthesize cpf;
@synthesize created_at;
@synthesize updated_at;
@synthesize email;


- (void) dealloc
{
	[id release];
	[cpf release];
	[created_at release];
	[updated_at release];
	[email release];
	
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
	id id_ = [dic objectForKey:@"id"];
	if([id_ isKindOfClass:[NSNumber class]])
	{
		self.id = id_;
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
