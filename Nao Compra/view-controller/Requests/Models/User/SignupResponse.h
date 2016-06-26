#import <Foundation/Foundation.h>
#import "User.h"
#import <Mantle/Mantle.h>

@interface SignupResponse : MTLModel <MTLJSONSerializing>

@property (nonatomic, retain) User *User;
@property (nonatomic, retain) NSString *token;
@property (nonatomic, retain) NSString *role;

@end
