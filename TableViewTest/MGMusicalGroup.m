//
//  FootballTeam.m
//  TableViewTest
//
//  Created by Admin on 31.07.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGMusicalGroup.h"

@implementation MGMusicalGroup

-(id)initWithName:(NSString *)name image:(UIImage *)image {
    
    self = [super init];
    
    if (self) {
        
        _name = name;
        _image = image;
    }
    
    return self;
}


@end
