//
//  ProfileViewController.m
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize name, age, school, interests, picture, editName, editAge, editSchool, editInterests, userProfile;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    edittingEnabled = false;
    [self switchTextFields];
    
    //get profile from userTabViewController parent
    UserTabViewController *parent = self.parentViewController;
    self.userProfile = parent.userProfile;
    
    NSString *nameTemp = [[self.userProfile.firstName stringByAppendingString:@" "]stringByAppendingString:self.userProfile.lastName];
    self.name.text = nameTemp;
    self.editName.text = nameTemp;
    
    self.age.text = self.userProfile.grade;
    self.editAge.text = self.userProfile.grade;
    
    self.school.text = self.userProfile.school;
    self.editSchool.text = self.userProfile.school;
    
    if(self.userProfile.interests == nil) {
        self.interests.text = @"No interests";
        self.editInterests.text = @"No interests";
    }
    else {
        self.interests.text = self.userProfile.interests;
        self.editInterests.text = self.userProfile.interests;
    }
    
    if(self.userProfile.userImage==nil)
        self.picture.image = [UIImage imageNamed:@"empty_profile.jpg"];
    else
        self.picture.image = self.userProfile.userImage;
}

-(void)switchTextFields
{
    self.editName.hidden = !edittingEnabled;
    self.editAge.hidden = !edittingEnabled;
    self.editSchool.hidden = !edittingEnabled;
    self.editInterests.hidden = !edittingEnabled;
    self.editProPic.hidden = !edittingEnabled;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonClicked:(id)sender {
    if(edittingEnabled) {
        //do editting bullshit
    }
    edittingEnabled = !edittingEnabled;
    [self switchTextFields];
    
}

- (IBAction)editProfilePicture:(id)sender {
}
@end
