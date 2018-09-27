//
//  MyViewController.m
//  test
//
//  Created by wangbolin on 2018/9/26.
//  Copyright © 2018年 wangbolin. All rights reserved.
//

#import "MyViewController.h"
#import "HttpManager.h"
#import "User.h"
#import "UserTableViewCell.h"
@interface MyViewController ()
{
    NSMutableArray * _stuArr;
    __weak IBOutlet UITableView *myTableView;
    
}
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.tabBarController.navigationItem.title=@"我的";
    NSLog(@"me did loaded");

    _stuArr=[NSMutableArray new];
    [ myTableView registerNib:[UINib nibWithNibName:@"UserTableViewCell" bundle:nil] forCellReuseIdentifier:@"UserCell"];
    // Do any additional setup after loading the view.
    NSDictionary * dict=@{
                          @"url":@"http://192.168.50.2:3000/stu",
                          @"params":@""
                          };

    [HttpManager get:dict suc:^(NSArray *success) {

        self->_stuArr=[NSMutableArray arrayWithArray:success];
//         NSLog(@"success:%@",self->_stuArr);
        [self->myTableView reloadData];
    } fai:^(NSObject *failed) {
        NSLog(@"failed:%@",failed);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _stuArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UserTableViewCell *result = nil;

    if ([tableView isEqual:myTableView]){
        static NSString *TableViewCellIdentifier = @"UserCell";
        result = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier];
        if (result == nil){
            result = [[UserTableViewCell alloc]
                      initWithStyle:UITableViewCellStyleDefault
                      reuseIdentifier:TableViewCellIdentifier];
        }
        User *user=_stuArr[indexPath.row];

        result.userName.text=[user valueForKey:@"username"];
        result.userId.text=[user valueForKey:@"id"];
     
    }
    return result;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
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
