//
//  TableViewController.m
//  TableViewTest
//
//  Created by Admin on 31.07.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGMusicalGroupsViewController.h"
#import "MGMusicalGroupManager.h"
#import "MGMusicalGroup.h"
#import "MGMusicalGroupTableCell.h"

static NSString *kMGMusicalGroupTableCell = @"MGMusicalGroupTableCell";
static NSString *kCellIdentifier          = @"musicalGroupTableCell";

@interface MGMusicalGroupsViewController ()
@property (nonatomic, strong) MGMusicalGroupManager *musicalGroupManager;
@end

@implementation MGMusicalGroupsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.musicalGroupManager = [[MGMusicalGroupManager alloc]init];
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.musicalGroupManager.musicalGroups count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MGMusicalGroupTableCell *cell = (MGMusicalGroupTableCell *)[tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (!cell) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:kMGMusicalGroupTableCell owner:self options:nil];
        cell = nib[0];
    }
    MGMusicalGroup *group = self.musicalGroupManager.musicalGroups[indexPath.row];
    [cell setupCellWithGroup:group];
    return cell;
}
@end
