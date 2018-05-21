//
//  ViewController.m
//  SSMoveButton
//
//  Created by 王少帅 on 2017/9/21.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import "ViewController.h"
#import "WSSMoveButton.h"

//随机色
#define kRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self setMoveButton];
}

#pragma mark SSMoveButton
- (void)setMoveButton
{
    WSSMoveButton *btn = [WSSMoveButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(5, 100, 60, 60);
    [btn setBackgroundImage:[UIImage imageNamed:@"movebutton"] forState:UIControlStateNormal];
    btn.layer.cornerRadius = 20.0f;
    btn.layer.masksToBounds = YES;
    [btn setDragEnable:YES];
    [btn setAdsorbEnable:YES];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(didClickedInMoveButton:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark movebutton点击事件
- (void)didClickedInMoveButton:(UIButton *)sender
{
    self.view.backgroundColor = kRandomColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
