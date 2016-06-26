//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface User : NSObject
{
	NSDecimalNumber *id;
	NSString *cpf;
	NSString *created_at;
	NSString *updated_at;
	NSString *email;
}

@property (nonatomic, retain) NSDecimalNumber *id;
@property (nonatomic, retain) NSString *cpf;
@property (nonatomic, retain) NSString *created_at;
@property (nonatomic, retain) NSString *updated_at;
@property (nonatomic, retain) NSString *email;

- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
