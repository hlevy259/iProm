//
//  Profile.m
//  iProm
//
//  Created by Daniel on 5/10/14.
//  Copyright (c) 2014 HenryIsCool. All rights reserved.
//

#import "Profile.h"

@implementation Profile

//synthesize getters and setters for instance variables
@synthesize firstName, lastName, school, grade, interests, userImage;

-(id)initWithFirstName:(NSString*)first andLastName:(NSString*)last andSchool:(NSString*)theSchool andGrade:(NSString*)theGrade andInterests:(NSMutableArray*)theInterests andUserImage:(UIImage*)picture
{
    self = [super init];
    if(self)
    {
        self.firstName = first;
        self.lastName = last;
        self.school = theSchool;
        self.grade = theGrade;
        self.interests = theInterests;
        self.userImage = picture;
    }
    
    return self;
}

-(void)editName:(NSString*)first withLastName:(NSString*)last
{
    self.firstName = first;
    self.lastName = last;
}

-(void)addInterest:(NSString*)interest
{
    [interests addObject:interest];
}

-(void)removeInterest:(NSUInteger)index
{
    [interests removeObjectAtIndex:index];
}

@end
