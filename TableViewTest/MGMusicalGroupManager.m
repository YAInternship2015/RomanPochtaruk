//
//  MGMusicalGroupManager.m
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "MGMusicalGroupManager.h"

#import "MGMusicalGroup.h"

@interface MGMusicalGroupManager ()
@property (nonatomic, strong) NSArray *groups;
@end

@implementation MGMusicalGroupManager
-(id)init {
    self = [super init];
    if (self) {
        MGMusicalGroup *theBeatles = [[MGMusicalGroup alloc]initWithName:@"The Beatles"
                                                                   image:[UIImage imageNamed:@"theBeatles.jpg"]];
        MGMusicalGroup *bonJovi = [[MGMusicalGroup alloc]initWithName:@"Bon Jovi"
                                                                image:[UIImage imageNamed:@"Bon_Jovi.jpg"]];
        MGMusicalGroup *queen = [[MGMusicalGroup alloc]initWithName:@"Queen"
                                                              image:[UIImage imageNamed:@"queen.jpg"]];
        MGMusicalGroup *kino = [[MGMusicalGroup alloc]initWithName:@"Кино"
                                                             image:[UIImage imageNamed:@"Kino.jpg"]];
        MGMusicalGroup *nautilus = [[MGMusicalGroup alloc]initWithName:@"Наутилус"
                                                                 image:[UIImage imageNamed:@"Nautilus.jpg"]];
        MGMusicalGroup *okeanElzi = [[MGMusicalGroup alloc]initWithName:@"Океан Ельзы"
                                                                  image:[UIImage imageNamed:@"OE.jpg"]];
        MGMusicalGroup *ddt = [[MGMusicalGroup alloc]initWithName:@"ДДТ"
                                                            image:[UIImage imageNamed:@"DDT.jpg"]];
        MGMusicalGroup *pinkFloyd = [[MGMusicalGroup alloc]initWithName:@"Pink Floyd"
                                                                  image:[UIImage imageNamed:@"Pink_Floyd.jpg"]];
        MGMusicalGroup *scorpions = [[MGMusicalGroup alloc]initWithName:@"Scorpions"
                                                                  image:[UIImage imageNamed:@"Scorpions.jpg"]];
        MGMusicalGroup *mashinaVremeni = [[MGMusicalGroup alloc]initWithName:@"Машина Времени"
                                                                       image:[UIImage imageNamed:@"Mashina_Vremeni.jpg"]];
        self.groups = @[theBeatles,bonJovi,queen,kino,nautilus,okeanElzi,ddt,pinkFloyd,scorpions,mashinaVremeni];
    }
    return self;
}
- (NSArray *)musicalGroups {
    return self.groups;
}
@end
