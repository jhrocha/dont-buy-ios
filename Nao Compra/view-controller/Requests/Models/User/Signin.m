//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "Signin.h"


@implementation Signin

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"email":@"email",
             @"password":@"password"
             };

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

	
}

@end
