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
             @"startDate":@"start_date",
             @"finalDate":@"end_date"
             };
}

+ (NSDateFormatter *)dateFormatter {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"dd/MM/yyyy";
    
    return dateFormatter;
}

+ (NSValueTransformer *)startDateJSONTransformer{
    
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        
        return [[self dateFormatter] dateFromString:(NSString *)value];
        
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        
        return [[self dateFormatter] stringFromDate:(NSDate *)value];
        
    }];
    
}

+ (NSValueTransformer *)finalDateJSONTransformer{
    
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        
        return [[self dateFormatter] dateFromString:(NSString *)value];
        
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        
        return [[self dateFormatter] stringFromDate:(NSDate *)value];
        
    }];
    
}
@end
