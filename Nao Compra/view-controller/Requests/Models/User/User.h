#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface User : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSNumber *identifier;
@property (strong, nonatomic) NSString *cpf;
@property (strong, nonatomic) NSString *created_at;
@property (strong, nonatomic) NSString *updated_at;
@property (strong, nonatomic) NSString *email;

@end
