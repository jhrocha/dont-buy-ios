#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Signin : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *email;

@end
