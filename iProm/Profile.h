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

@property NSMutableArray *interests;//array of user interests (football, music...)

@property UIImage *userImage;


-(void)editName:(NSString*)first withLastName:(NSString*)last;

-(void)addInterest:(NSString*)interest;
-(void)removeInterest:(NSUInteger)index;

@end
