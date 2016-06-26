//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Signin : NSObject
{
	NSString *password;
	NSString *email;
}

@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *email;

- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
