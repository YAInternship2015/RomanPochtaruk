//
//  MGMusicalGroupCell.h
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MGMusicalGroupCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageImgView;

- (void)setupCellWithName:(NSString *)name image:(UIImage *)image;

@end
