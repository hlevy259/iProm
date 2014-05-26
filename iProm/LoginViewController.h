//
//  LoginViewController.h
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Profile.h"

@interface LoginViewController : UIViewController<UITextFieldDelegate>

    @property (strong, nonatomic)IBOutlet UIButton *login;
    @property (strong, nonatomic)IBOutlet UITextField *username;
    @property (strong, nonatomic)IBOutlet UITextField *password;


    @property (strong, nonatomic) Profile *profile;

- (IBAction)login:(id)sender;

-(void)dismissKeyboard;



@end
