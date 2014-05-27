//
//  UserTabViewController.h
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Profile.h"
#import "ProfileViewController.h"

@interface UserTabViewController : UITabBarController

@property (strong, nonatomic) Profile *userProfile;

@end