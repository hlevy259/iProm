//
//  SignUpViewController.m
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import "SignUpViewController.h"
#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface SignUpViewController ()


@end

@implementation SignUpViewController

@synthesize password, username, first, last, gradeChoice, create, grades, gradeButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //self.gradeChoice.hidden = YES;
        self.grades = [[NSArray alloc] initWithObjects: @"Freshman", @"Sophomore", @"Junior", @"Senior", nil];
        NSLog(@"grades initiated");
    }
    NSLog(@"wtf");
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        //self.gradeChoice.hidden = YES;
        self.grades = [[NSArray alloc] initWithObjects: @"Freshman", @"Sophomore", @"Junior", @"Senior", nil];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.gradeChoice.hidden = YES;
    self.password.secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)clearAllFields
{
    self.username.text = @"";
    self.first.text = @"";
    self.last.text = @"";
    self.password.text = @"";
    self.gradeButton.titleLabel.text = @"Click to select grade";
}

#pragma mark - Picker View

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return [self.grades count];
}

//returns the object for the given row
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    return [self.grades objectAtIndex:row];
}

//what to do when the user has selected a row
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component
{
    self.gradeButton.titleLabel.text = [[self.grades objectAtIndex:row] description];
    self.gradeChoice.hidden = YES;
}

- (IBAction)selectGrade:(id)sender
{
    self.gradeChoice.hidden = NO;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

//access server and attempt to create account with given credentials. If success, move on to new view else, stay on page
- (IBAction)createAccount:(id)sender {
    PFObject *user = [PFObject objectWithClassName:@"User"];
    user[@"username"] = self.username.text;
    user[@"password"] = self.password.text;
    user[@"first"] = self.first.text;
    user[@"last"] = self.last.text;
    user[@"grade"] = self.gradeButton.titleLabel.text;
    
    [user saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            [self clearAllFields];
            // Show the errorString somewhere and let the user try again.
        }
    }];
}

#pragma mark - Connection to Server

//Attempts to connect to server and create account, returns YES if creation complete, else returns NO
-(BOOL)attemptCreateAccountWithFirst:(NSString*)first andLast:(NSString*)last andUsername:(NSString*)user andPassword:(NSString*)password andGrade:(NSString*)grade
{
    return YES;
}


@end
