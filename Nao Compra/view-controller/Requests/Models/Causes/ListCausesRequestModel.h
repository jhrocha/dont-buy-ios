#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface ListCausesRequestModel : MTLModel <MTLJSONSerializing>

@property(strong, nonatomic) NSDate *startDate;
@property(strong, nonatomic) NSDate *finalDate;

@end
