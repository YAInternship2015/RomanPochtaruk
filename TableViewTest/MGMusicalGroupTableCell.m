//
//  MGMusicalGroupCell.m
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGMusicalGroupTableCell.h"

#import "MGMusicalGroup.h"

@interface MGMusicalGroupTableCell ()
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageImgView;
@end

@implementation MGMusicalGroupTableCell
- (void)setupCellWithGroup:(MGMusicalGroup *)group {
    self.nameLabel.text = group.name;
    self.imageImgView.image = group.image;
}
@end
