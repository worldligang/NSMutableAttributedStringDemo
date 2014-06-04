//
//  LGAppDelegate.m
//  LabelDemo
//
//  Created by li.gang on 14-6-4.
//  Copyright (c) 2014年 LG. All rights reserved.
//

#import "LGAppDelegate.h"
#import "UIColor+CustomColors.m"

@implementation LGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    //带有属性的文字
    NSString *string = @"你知道怎么在一个label设置不同的颜色嘛？";
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:string];
    
    //设置颜色(NSForegroundColorAttributeName代表要设置颜色， value代表值， range 代表范围)
    /**
       　　　　其他设置：
       　　　　　　1.NSForegroundColorAttributeName //颜色
       　　　　　　2.NSFontAttributeName //字体
       　　　　　　3.NSBackgroundColorAttributeName //背景色
     //还有其他的很多的属性，可以自己去看苹果的API，这里不再详述
     */
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor customBlueColor] range:NSMakeRange(1, 3)];
    //3.添加到Label中
    UILabel *label = [[UILabel alloc] init];
    label.textColor = [UIColor customGrayColor];
    label.frame = CGRectMake(0, 200, 280, 40);
    [label setAttributedText:attrString];
    [label sizeToFit];
    [self.window addSubview:label];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
