//
//  LoginViewController.m
//  iProm
//
//  Created by Daniel on 5/11/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import "LoginViewController.h"
#import "UserTabViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize login, username, password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        /*
         UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
         action:@selector(dismissKeyboard)];
         [self.view addGestureRecognizer:tap];
         tap.cancelsTouchesInView = NO;
         tap.enabled = NO;*/
    }
    NSLog(@"LoginViewController initialized");
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(void)dismissKeyboard
{
    [self.login resignFirstResponder];
    [self.username resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    password.secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


/*
 Method called whe login button called. Connects to server and attempts to gain user information, if username/password does not match, clear textfields
 */
- (IBAction)login:(id)sender {
    NSString *user = self.username.text;
    NSString *pass = self.password.text;
    
    //Attempt connection here....
    
    BOOL connection = YES;//used to see if a connection has been established
    
    //testing purposes REMOVE when connection business is complete
    Profile *prof = [[Profile alloc] initWithFirstName:@"Daniel" andLastName:@"Smith" andSchool:@"LFHS" andGrade:@"Junior" andInterests:nil andUserImage:nil];
    self.profile = prof;
    
    
    if(connection)//move on to next storyboard
    {
        
        UserTabViewController *NVC = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
        NVC.userProfile = self.profile;
        NVC.temp = @"hello";
        [self presentViewController:NVC animated:YES completion:nil];
    } else
    {
        self.username.text = @"";
        self.password.text = @"";
    }
}
@end
