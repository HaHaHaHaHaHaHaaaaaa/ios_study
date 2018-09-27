//
//  User.h
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface User : NSObject
//{
//    NSString * _privateProperty;
//    NSString * username;
//    NSInteger *status;
//}
@property(nonatomic,strong) NSString *username;
@property(nonatomic,strong) NSString *classId;
@property(nonatomic,strong) NSString *birthday;
@property(nonatomic,strong) NSString *userid;
@property(nonatomic,strong) NSString *createAt;
@property(nonatomic,strong) NSString *updateAt;

-(void)getUserName:(NSString*) userId;
-(instancetype)getUserInstance:(NSString*) justTest;
@end
