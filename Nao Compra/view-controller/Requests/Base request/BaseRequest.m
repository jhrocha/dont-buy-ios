//
//  BaseRequest.m
//  unimed api
//
//  Created by Jorginho on 1/19/15.
//  Copyright (c) 2015 JHRocha. All rights reserved.
//

#import "BaseRequest.h"


@implementation BaseRequest

- (id)init {
    if (self = [super init]) {
        self.manager = [AFHTTPSessionManager manager];
        self.manager.requestSerializer = [AFJSONRequestSerializer serializer];
        self.manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

- (void) GETRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)parameters withBlock:(requestBlock)block{
    
    [self.manager GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (block) {
            block (YES, responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (block) {
            block (NO, nil, error);
        }
    }];
}

- (void) PUTRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)parameters withBlock:(requestBlock)block{
    
    [self.manager PUT:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (block) {
            block (YES, responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (block) {
            block (NO, nil, error);
        }
    }];
    
}

- (void) POSTRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)parameters withBlock:(requestBlock)block{
    
    [self.manager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (block) {
            block (YES, responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (block) {
            block (NO, nil, error);
        }
    }];
}

- (void) DELETERequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters withBlock:(requestBlock)block{
    [self.manager DELETE:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (block) {
            block (YES, responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (block) {
            block (NO, nil, error);
        }
    }];
}
@end
