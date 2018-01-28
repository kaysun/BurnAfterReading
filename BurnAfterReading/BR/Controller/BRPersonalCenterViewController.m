//
//  BRPersonalCenterViewController.m
//  BurnAfterReading
//
//  Created by 孙玲 on 2018/1/20.
//  Copyright © 2018年 qinqin. All rights reserved.
//

#import "BRPersonalCenterViewController.h"

@interface BRPersonalCenterViewController ()

@property (nonatomic, strong) UILabel *lblTitle;

@end

@implementation BRPersonalCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.lblTitle];
    self.lblTitle.text = @"我是个人中心controller";
}

- (UILabel *) lblTitle
{
    if (!_lblTitle) {
        _lblTitle = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 500, 50)];
        _lblTitle.font = [UIFont systemFontOfSize:26];
        _lblTitle.textColor = [UIColor blackColor];
    }
    return _lblTitle;
}

@end

