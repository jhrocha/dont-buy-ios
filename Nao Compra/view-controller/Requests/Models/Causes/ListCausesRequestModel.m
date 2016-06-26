//
//  ListCausesRequestModel.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "ListCausesRequestModel.h"

@implementation ListCausesRequestModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"start_date":@"startDate",
             @"final_date":@"finalDate"
             };
}
@end
