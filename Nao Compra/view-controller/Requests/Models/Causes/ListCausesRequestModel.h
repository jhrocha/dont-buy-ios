#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface ListCausesRequestModel : MTLModel <MTLJSONSerializing>

@property(strong, nonatomic) NSString *startDate;
@property(strong, nonatomic) NSString *finalDate;

@end
