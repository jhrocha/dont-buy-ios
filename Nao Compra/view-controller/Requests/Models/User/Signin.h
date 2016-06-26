#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Signin : MTLModel <MTLJSONSerializing>

@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *email;

- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
