//
//  AppDelegate+GLTabBarController.m
//  GLNavigationArchitectureSet
//
//  Created by ZK on 16/6/22.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import "AppDelegate+GLTabBarController.h"
#import "GLSpecialButtonSubclass.h"

@implementation AppDelegate (GLTabBarController)

- (GLTabBarController*)tabBarController
{
    GLSpecialButtonSubclass* specialButton = [[GLSpecialButtonSubclass alloc] init];

    GLTabBarController* tabBarController=[GLTabBarController tabBarControllerWithViewControllers:[self setupViewControllers] tabBarItemsAttributes:[self customizeTabBarForControll] SpecialButtonWith:nil ];
    
    [tabBarController setTabBarHeight:40];
    [tabBarController xzm_setShadeItemBackgroundColor:[UIColor redColor]];

    return tabBarController;
}

- (NSArray*)setupViewControllers {
    UIViewController *firstViewController = [[UIViewController alloc] init];
    UIViewController *firstNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:firstViewController];
    
    UIViewController *secondViewController = [[UIViewController alloc] init];
    UIViewController *secondNavigationController = [[UINavigationController alloc]
                                                    initWithRootViewController:secondViewController];
    
    UIViewController *thirdViewController = [[UIViewController alloc] init];
    UIViewController *thirdNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:thirdViewController];
    
    UIViewController *fourthViewController = [[UIViewController alloc] init];
    UIViewController *fourthNavigationController = [[UINavigationController alloc]
                                                    initWithRootViewController:fourthViewController];
    
    NSArray* array=@[firstNavigationController,secondNavigationController,thirdNavigationController, fourthNavigationController];
    return array;
    
}

- (NSArray*)customizeTabBarForControll {
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:144.0/255.0 green:144.0/255.0 blue:144.0/255.0 alpha:1];
    
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:241.0/255.0 green:124.0/255.0 blue:0/255.0 alpha:1];
    
    NSDictionary *dict1 = @{
//                            GLTabBarItemTitle : @"首页",
                            GLTabBarItemImage : @"tabbar_home_os7",
                            GLTabBarItemSelectedImage : @"tabbar_home_selected_os7",
                            GLTabBarItemTitleTextAttributes : normalAttrs,
                            GLTabBarItemSelectedTitleTextAttributes : selectedAttrs
                            };
    NSDictionary *dict2 = @{
//                            GLTabBarItemTitle : @"消息",
                            GLTabBarItemImage : @"tabbar_message_center_os7",
                            GLTabBarItemSelectedImage : @"tabbar_message_center_selected_os7",
                            GLTabBarItemTitleTextAttributes : normalAttrs,
                            GLTabBarItemSelectedTitleTextAttributes : selectedAttrs
                            };
    NSDictionary *dict3 = @{
//                            GLTabBarItemTitle : @"发现",
                            GLTabBarItemImage : @"tabbar_discover_os7",
                            GLTabBarItemSelectedImage : @"tabbar_discover_selected_os7",
                            GLTabBarItemTitleTextAttributes : normalAttrs,
                            GLTabBarItemSelectedTitleTextAttributes : selectedAttrs
                            };
    NSDictionary *dict4 = @{
//                            GLTabBarItemTitle : @"我的",
                            GLTabBarItemImage : @"tabbar_profile_os7",
                            GLTabBarItemSelectedImage : @"tabbar_profile_selected_os7",
                            GLTabBarItemTitleTextAttributes : normalAttrs,
                            GLTabBarItemSelectedTitleTextAttributes : selectedAttrs
                            };
    NSArray *tabBarItemsAttributes = @[ dict1, dict2, dict3, dict4 ];
    return tabBarItemsAttributes;
}


@end
