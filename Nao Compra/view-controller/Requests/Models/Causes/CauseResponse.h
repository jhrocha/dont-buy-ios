#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "Customer.h"
#import "Cause.h"
@interface CauseResponse : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) Cause *cause;
@property (strong, nonatomic) Customer *customer;


@end
