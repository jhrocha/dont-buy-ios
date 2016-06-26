//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Signup : MTLModel <MTLJSONSerializing>

@property (nonatomic, retain) NSString *cpf;
@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *role;

- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
