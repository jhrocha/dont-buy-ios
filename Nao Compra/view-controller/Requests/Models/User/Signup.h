#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Signup : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSString *cpf;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *role;

@end
