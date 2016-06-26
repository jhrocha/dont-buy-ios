//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "Customer.h"


@implementation Customer


@synthesize gender;
@synthesize initial_age;
@synthesize final_age;


- (void) dealloc
{
	[gender release];
	[initial_age release];
	[final_age release];
	
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
	id gender_ = [dic objectForKey:@"gender"];
	if([gender_ isKindOfClass:[NSString class]])
	{
		self.gender = gender_;
	}

	id initial_age_ = [dic objectForKey:@"initial_age"];
	if([initial_age_ isKindOfClass:[NSNumber class]])
	{
		self.initial_age = initial_age_;
	}

	id final_age_ = [dic objectForKey:@"final_age"];
	if([final_age_ isKindOfClass:[NSNumber class]])
	{
		self.final_age = final_age_;
	}

	
}

@end
