//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Customer : NSObject
{
	NSString *gender;
	NSDecimalNumber *initial_age;
	NSDecimalNumber *final_age;
}

@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSDecimalNumber *initial_age;
@property (nonatomic, retain) NSDecimalNumber *final_age;

- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
