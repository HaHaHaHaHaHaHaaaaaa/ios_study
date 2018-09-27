//
//  HttpManager.m
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import "HttpManager.h"
#import "AFNetworking.h"

@implementation HttpManager
+(void)get:(NSDictionary*) paramsDic suc:(SuccessCallback)suc fai:(FailedCallback)fai{
    //1.创建会话管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //2.封装参数
    //    NSDictionary *dict = @{
    //                           @"username":@"Lion",
    //                           @"pwd":@"1314",
    //                           @"type":@"JSON"
    //                           };
    //3.发送GET请求
    
    [manager GET:[paramsDic valueForKey:@"url"] parameters:[paramsDic valueForKey:@"params"] progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"success--%@--%@",[responseObject class],responseObject);
        suc(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fai(error);
//        NSLog(@"failure--%@",error);
    }];
    
}
+(void)post:(NSDictionary*) paramsDic suc:(SuccessCallback)suc fai:(FailedCallback)fai{
    
}

@end
