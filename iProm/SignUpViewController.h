//
//  SignUpViewController.h
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController<UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>


@property (strong, nonatomic)IBOutlet UITextField *username;
@property (strong, nonatomic)IBOutlet UITextField *password;
@property (strong, nonatomic)IBOutlet UITextField *first;
@property (strong, nonatomic)IBOutlet UITextField *last;
@property (strong, nonatomic)IBOutlet UIPickerView *gradeChoice;
@property (strong, nonatomic)IBOutlet UIButton *create;
@property (strong, nonatomic)NSArray *grades;
@property (weak, nonatomic) IBOutlet UIButton *gradeButton;

- (IBAction)createAccount:(id)sender;
- (IBAction)selectGrade:(id)sender;
-(BOOL)attemptCreateAccountWithFirst:(NSString*)first andLast:(NSString*)last andUsername:(NSString*)user andPassword:(NSString*)password andGrade:(NSString*)grade;
-(void)clearAllFields;

@end
