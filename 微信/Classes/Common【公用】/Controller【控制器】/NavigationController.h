//
//  NavigationController.h
//  微信
//
//  Created by shoule on 15/6/24.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigationController : UINavigationController

@property (weak, nonatomic) IBOutlet UITabBarItem *WeChatItem;
@property (weak, nonatomic) IBOutlet UITabBarItem *AddressBookItem;
@property (weak, nonatomic) IBOutlet UITabBarItem *DiscoverItem;
@property (weak, nonatomic) IBOutlet UITabBarItem *MeItem;

@end
