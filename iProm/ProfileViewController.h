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


BOOL edittingEnabled;
@interface ProfileViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *age;
@property (weak, nonatomic) IBOutlet UILabel *school;
@property (weak, nonatomic) IBOutlet UILabel *interests;
@property (weak, nonatomic) IBOutlet UIImageView *picture;

@property (weak, nonatomic) IBOutlet UITextField *editName;
@property (weak, nonatomic) IBOutlet UITextField *editAge;
@property (weak, nonatomic) IBOutlet UITextField *editSchool;
@property (weak, nonatomic) IBOutlet UITextView *editInterests;
@property (weak, nonatomic) IBOutlet UIButton *editProPic;

@property Profile *userProfile;

- (IBAction)buttonClicked:(id)sender;
- (IBAction)editProfilePicture:(id)sender;
- (void)switchTextFields;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end