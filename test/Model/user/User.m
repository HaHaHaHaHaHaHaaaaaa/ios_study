//
//  User.m
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import "User.h"

@implementation User
-(void)getUserName:(NSString*) userId{
    NSLog(@"get uerId method");
}
-(instancetype)getUserInstance:(NSString*) justTest{
    NSLog(@"get user Instance method");
    return self;
}
@end
