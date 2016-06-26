#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "Customer.h"

@interface Cause : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;
@property (strong, nonatomic) Customer *Customer;


@end
