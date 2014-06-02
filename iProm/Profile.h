//
//  Profile.h
//  iProm
//
//  Created by Daniel on 5/10/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface Profile : NSObject

//global variables for the class
@property NSString *firstName;
@property NSString *lastName;
@property NSString *school;
@property NSString *grade;//1 for freshman, 2 for soph...

@property NSString *interests;//array of user interests (football, music...)

@property UIImage *userImage;


-(void)editName:(NSString*)first withLastName:(NSString*)last;

-(id)initWithFirstName:(NSString*)first andLastName:(NSString*)last andSchool:(NSString*)theSchool andGrade:(NSString*)theGrade andInterests:(NSString*)theInterests andUserImage:(UIImage*)picture;

@end
