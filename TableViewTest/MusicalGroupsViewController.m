//
//  TableViewController.m
//  TableViewTest
//
//  Created by Admin on 31.07.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MusicalGroupsViewController.h"

#import "MGMusicalGroupManager.h"

#import "MGMusicalGroup.h"

#import "MGMusicalGroupCell.h"

@interface MusicalGroupsViewController () {
    
    NSArray *groups;
}
@end

@implementation MusicalGroupsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIEdgeInsets inset = UIEdgeInsetsMake(20, 0, 0, 0);
    self.tableView.contentInset = inset;
    
    groups = [[[MGMusicalGroupManager alloc]init] musicalGroups];
    
}

#pragma mark - UITableViewDataSource -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [groups count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *kCellIdentifier = @"musicalGroupCell";
    
    MGMusicalGroupCell *cell = (MGMusicalGroupCell *)[tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    
    if (!cell) {
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MGMusicalGroupCell" owner:self options:nil];
        cell = nib[0];
    }
    
    MGMusicalGroup *group = groups[indexPath.row];
    [cell setupCellWithName:group.name image:group.image];

    
    return cell;
}

@end
