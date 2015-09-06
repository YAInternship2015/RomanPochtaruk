//
//  MGMusicalGroupCell.h
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MGMusicalGroup;

@interface MGMusicalGroupTableCell : UITableViewCell

- (void)setupCellWithGroup:(MGMusicalGroup *)group;

@end
