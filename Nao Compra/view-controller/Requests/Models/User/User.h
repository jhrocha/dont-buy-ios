#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface User : MTLModel <MTLJSONSerializing>

@property (nonatomic, retain) NSNumber *identifier;
@property (nonatomic, retain) NSString *cpf;
@property (nonatomic, retain) NSString *created_at;
@property (nonatomic, retain) NSString *updated_at;
@property (nonatomic, retain) NSString *email;

- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
