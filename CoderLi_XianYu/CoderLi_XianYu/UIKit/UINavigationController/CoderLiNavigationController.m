//
//  CoderLiNavigationController.m
//  UIKit_Learning
//
//  Created by lys013rt on 2020/4/11.
//  Copyright © 2020 CoderLi. All rights reserved.
//

#import "CoderLiNavigationController.h"

@interface CoderLiNavigationController ()

@end

@implementation CoderLiNavigationController

+ (void)initialize
{
    //这里可以对导航控制器做一些设置。
    //iOS7以后，设置导航条颜色使用BarTintColor
    [[UINavigationBar appearance] setBarTintColor:[UIColor systemYellowColor]];
    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@""]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont boldSystemFontOfSize:18],
        NSForegroundColorAttributeName:[UIColor blackColor]
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
