//
//  ProfileViewController.h
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Profile.h"
#import "UserTabViewController.h"

@interface ProfileViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;

@property Profile *userProfile;

@end