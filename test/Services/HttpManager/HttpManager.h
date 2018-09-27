//
//  HttpManager.h
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpManager : NSObject

typedef void(^SuccessCallback)(NSArray* success);
typedef void(^FailedCallback)(NSObject* failed);

//@property (nonatomic,copy)Callback callBackBlock;//2


+(void)get:(NSDictionary*) paramsDic suc:(SuccessCallback)suc fai:(FailedCallback)fai;
+(void)post:(NSDictionary*) paramsDic suc:(SuccessCallback)suc fai:(FailedCallback)fai;
@end
