#import <Foundation/Foundation.h>
#import "User.h"
#import <Mantle/Mantle.h>

@interface SignupResponse : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) User *User;
@property (strong, nonatomic) NSString *token;
@property (strong, nonatomic) NSString *role;

@end
