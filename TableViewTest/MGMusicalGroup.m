//
//  FootballTeam.m
//  TableViewTest
//
//  Created by Admin on 31.07.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGMusicalGroup.h"

@implementation MGMusicalGroup
#warning после "-" должен быть пробел. Это касается всех методов в приложении
-(id)initWithName:(NSString *)name image:(UIImage *)image {
#warning все вседующие пустые строки не нужны
    self = [super init];
    
    if (self) {
        
        _name = name;
        _image = image;
    }
    
    return self;
}


@end
