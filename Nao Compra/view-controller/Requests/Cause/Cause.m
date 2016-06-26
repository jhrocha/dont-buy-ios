//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "Cause.h"
#import "Customer.h"


@implementation Cause


@synthesize description;
@synthesize question;
@synthesize answer;
@synthesize Customer;


- (void) dealloc
{
	[description release];
	[question release];
	[answer release];
	[Customer release];
	
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
	id description_ = [dic objectForKey:@"description"];
	if([description_ isKindOfClass:[NSString class]])
	{
		self.description = description_;
	}

	id question_ = [dic objectForKey:@"question"];
	if([question_ isKindOfClass:[NSString class]])
	{
		self.question = question_;
	}

	id answer_ = [dic objectForKey:@"answer"];
	if([answer_ isKindOfClass:[NSString class]])
	{
		self.answer = answer_;
	}

	id Customer_ = [dic objectForKey:@"Customer"];
	if([Customer_ isKindOfClass:[NSDictionary class]])
	{
		self.Customer = [[[Customer alloc] initWithJSONDictionary:Customer_] autorelease];
	}

	
}

@end
