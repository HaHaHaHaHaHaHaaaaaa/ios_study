//
//  RankingsViewController.m
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import "RankingsViewController.h"
#import "ProgressHUD.h"
@interface RankingsViewController ()

@end

@implementation RankingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.tabBarController.navigationItem.title=@"排行榜";
    NSLog(@"rankings did load");
    [ProgressHUD show:@"Please wait..."];
    
    [NSTimer scheduledTimerWithTimeInterval:1 repeats:NO block:^(NSTimer * _Nonnull timer) {
           NSLog(@"延时结束");
        [ProgressHUD dismiss];
    }] ;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
