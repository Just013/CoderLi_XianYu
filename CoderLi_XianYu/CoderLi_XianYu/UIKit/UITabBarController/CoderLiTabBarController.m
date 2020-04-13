//
//  CoderLiTabBarController.m
//  UIKit_Learning
//
//  Created by lys013rt on 2020/4/11.
//  Copyright © 2020 CoderLi. All rights reserved.
//

#import "CoderLiTabBarController.h"
#import "CoderLiNavigationController.h"
#import "HomeViewController.h"
#import "PoolViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"

@interface CoderLiTabBarController ()

/** 发布按钮 */
@property (nonatomic, strong) UIButton *publishButton;

@end

@implementation CoderLiTabBarController

+ (void)initialize {
    //这里可以对TabBar条控制器做一些设置。
    //iOS7以后，设置填充颜色使用BarTintColor
    [[UITabBar appearance] setBarTintColor:[UIColor systemYellowColor]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont systemFontOfSize:12],
        NSForegroundColorAttributeName:[UIColor blackColor]
    } forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont systemFontOfSize:12],
        NSForegroundColorAttributeName:[UIColor blackColor]
    } forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUpViewControllers];
    [self addpublishBtn];
}

- (void)setUpViewControllers {
    HomeViewController *homeVC = [HomeViewController new];
    CoderLiNavigationController *nav1 = [[CoderLiNavigationController alloc] initWithRootViewController:homeVC];
    nav1.tabBarItem.title = @"闲鱼";
    nav1.tabBarItem.image = [UIImage imageNamed:@"home_normal"];
    nav1.tabBarItem.selectedImage = [UIImage imageNamed:@"home_highlight"];
    
    PoolViewController *poolVC = [PoolViewController new];
    CoderLiNavigationController *nav2 = [[CoderLiNavigationController alloc] initWithRootViewController:poolVC];
    nav2.tabBarItem.title = @"鱼塘";
    nav2.tabBarItem.image = [UIImage imageNamed:@"fishpond_normal"];
    nav2.tabBarItem.selectedImage = [UIImage imageNamed:@"fishpond_highlight"];
    
    MessageViewController *messageVC = [MessageViewController new];
    CoderLiNavigationController *nav3 = [[CoderLiNavigationController alloc] initWithRootViewController:messageVC];
    nav3.tabBarItem.title = @"消息";
    nav3.tabBarItem.image = [UIImage imageNamed:@"message_normal"];
    nav3.tabBarItem.selectedImage = [UIImage imageNamed:@"message_highlight"];
    nav3.tabBarItem.badgeValue = @"1";
    
    MineViewController *mineVC = [MineViewController new];
    CoderLiNavigationController *nav4 = [[CoderLiNavigationController alloc] initWithRootViewController:mineVC];
    nav4.tabBarItem.title = @"我的";
    nav4.tabBarItem.image = [UIImage imageNamed:@"account_normal"];
    nav4.tabBarItem.selectedImage = [[UIImage imageNamed:@"account_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [self setViewControllers:@[nav1, nav2, nav3, nav4]];
}

// 添加发布按钮
- (void)addpublishBtn {
    CGFloat totalW = self.tabBar.frame.size.width;
    CGFloat itemW = totalW/self.tabBar.items.count;
    CGFloat newItemW = totalW/(self.tabBar.items.count + 1);
    //向下取整
    NSInteger halfcount = floor(self.tabBar.items.count/2.0);
    
    for (NSInteger i = 0; i < self.tabBar.items.count; i++) {
        UITabBarItem *item = self.tabBar.items[i];
        CGFloat offsetX = 0;
        if (i < halfcount) {
            offsetX = (i*newItemW) + (newItemW/2) - ((i*itemW) + (itemW/2.0));
        } else {
            offsetX = ((i+1)*newItemW) + (newItemW/2) - ((i*itemW) + (itemW/2.0));
        }
        item.titlePositionAdjustment = UIOffsetMake(offsetX, 0);
    }
    
    [self.tabBar addSubview:self.publishButton];
}

- (void)publish_click {
    NSLog(@"publish...");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //获得点击的位置
    UITouch *touch = touches.allObjects.firstObject;
    CGPoint touchPoint = [touch locationInView:self.view];
    
    //获得发布按钮相对当前视图的位置和大小
    CGRect rect =  [self.publishButton convertRect:self.publishButton.bounds toView:self.view];
    //如果点击位置在发布按钮上，则触发发布事件
    if (CGRectContainsPoint(rect, touchPoint)) {
        [self.publishButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
}

- (UIButton *)publishButton {
    if (!_publishButton) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //点击不变灰
        button.adjustsImageWhenHighlighted = NO;
        button.frame = CGRectMake(0, 0, 60, 60);
        button.layer.cornerRadius = 30;
        button.center = CGPointMake(self.tabBar.center.x, 0);
        [button setBackgroundImage:[UIImage imageNamed:@"post_animate_add"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(publish_click) forControlEvents:UIControlEventTouchUpInside];
        button.clipsToBounds = YES;
        _publishButton = button;
    }
    return _publishButton;
}


@end
