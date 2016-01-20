//
//  DetailViewController.m
//  UINavigationController
//
//  Created by mac373 on 16/1/20.
//  Copyright © 2016年 ole. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Detail View";
    //实例化UIView,并居中
    _mUIView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _mUIView.backgroundColor = [UIColor orangeColor];
    //实例化UILabel
    _mUILabel = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2.0, (self.view.frame.size.height-100)/2.0, 100, 100)];
    _mUILabel.textAlignment = NSTextAlignmentCenter;
    _mUILabel.text = @"子视图";

    [_mUIView addSubview:_mUILabel];
    [self.view addSubview:_mUIView];
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
