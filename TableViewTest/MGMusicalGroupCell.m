//
//  MGMusicalGroupCell.m
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGMusicalGroupCell.h"

@implementation MGMusicalGroupCell

-(void)setupCellWithName:(NSString *)name image:(UIImage *)image {
    
    self.nameLabel.text = name;
    self.imageImgView.image = image;
}

@end
