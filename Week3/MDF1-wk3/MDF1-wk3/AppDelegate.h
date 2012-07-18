//
//  AppDelegate.h
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    NSMutableArray *myCurrentArray;
    NSString *plistAddress;
    NSDictionary *plistDictionary;
    NSMutableArray *businessArray;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) NSMutableArray *businessArray;
@property (strong, nonatomic) NSDictionary *plistDictionary;

@end
