//
//  MGContainerViewController.m
//  MusicalGroups
//
//  Created by Pochtaruk Roman on 06.09.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGContainerViewController.h"
#import "MGMusicalGroupsViewController.h"

static NSString *kMusicaGroupViewControllerIdentifier = @"musicaGroupViewController";

@interface MGContainerViewController ()
@property MGMusicalGroupsViewController *musicalGroupsViewController;
@end

@implementation MGContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.musicalGroupsViewController = [self.storyboard instantiateViewControllerWithIdentifier:kMusicaGroupViewControllerIdentifier];
    [self addChildViewController:self.musicalGroupsViewController];
    //self.musicalGroupsViewController.view.frame = self.view.frame;
    [self.view addSubview:self.musicalGroupsViewController.view];
    [self.musicalGroupsViewController didMoveToParentViewController:self];
}
@end
