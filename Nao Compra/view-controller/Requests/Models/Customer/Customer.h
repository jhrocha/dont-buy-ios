#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Customer : MTLModel <MTLJSONSerializing>
@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NSNumber *initial_age;
@property (strong, nonatomic) NSNumber *final_age;

@end
