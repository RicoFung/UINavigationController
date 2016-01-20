//
//  ViewController.m
//  UINavigationController
//
//  Created by mac373 on 16/1/20.
//  Copyright © 2016年 ole. All rights reserved.
//

#import "RootViewController.h"
#import "DetailViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //标题
    self.title = @"首页";
    //
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(jumpTo:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    //实例化UIView,并居中
    _mUIView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _mUIView.backgroundColor = [UIColor orangeColor];
    //实例化UILabel
    _mUILabel = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2.0, (self.view.frame.size.height-100)/2.0, 100, 100)];
    _mUILabel.textAlignment = NSTextAlignmentCenter;
    _mUILabel.text = @"根视图";
    //实例化UIButton
    _mUIButton = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2.0, (self.view.frame.size.height-10)/2.0, 100, 100)];
    [_mUIButton setTitle:@"跳转" forState:UIControlStateNormal];
    [_mUIButton addTarget:self action:@selector(jumpTo:) forControlEvents:UIControlEventTouchUpInside];
    //加载子视图
    [_mUIView addSubview:_mUILabel];
    [_mUIView addSubview:_mUIButton];
    [self.view addSubview:_mUIView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)jumpTo:(id)sender {
    [self.navigationController pushViewController:[[DetailViewController alloc]init] animated:YES];
}
@end
