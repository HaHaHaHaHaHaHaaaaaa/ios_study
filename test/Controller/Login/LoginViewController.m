//
//  LoginViewController.m
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}

-(void)initUI{
   
//    UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
//     UIImage *image= [UIImage imageNamed:@"home.png"];
//    [imgView setImage:image];
//    [self.view addSubview:imgView];
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





- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
