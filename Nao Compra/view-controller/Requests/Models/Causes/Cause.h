#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "Customer.h"

@interface Cause : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSNumber *identifier;
@property (strong, nonatomic) NSString *created_at;
@property (strong, nonatomic) NSString *updated_at;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;
@property (strong, nonatomic) Customer *customer;


@end
