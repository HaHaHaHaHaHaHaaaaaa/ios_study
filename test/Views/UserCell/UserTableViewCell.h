//
//  UserTableViewCell.h
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *userId;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *userName;
-(void)setData:(id) objectData;
@end
