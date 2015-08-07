//
//  TableViewController.m
//  TableViewTest
//
//  Created by Admin on 31.07.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import "TableViewController.h"
#import "MusicalGroup.h"

#warning Я писал в своих пожеланиях, что не нужно лепить всю логику в один вью контроллер. Все данные о модельках MusicalGroup стоит вынести в отдельный класс датасорс. Этот класс будет создавать и хранить все модели. А вью контроллер будет у него спрашивать, сколько есть моделей всего и также контретную модель по индексу.

@interface TableViewController () {
    
    NSMutableArray *groups;
}


@end

@implementation TableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    groups = [NSMutableArray array];    
    
    MusicalGroup *theBeatles = [[MusicalGroup alloc]init];
    theBeatles.name = @"The Beatles";
    theBeatles.image  = @"The_Beatles.png";
    [groups addObject:theBeatles];
    
    MusicalGroup *bonJovi = [[MusicalGroup alloc]init];
    bonJovi.name = @"Bon Jovi";
    bonJovi.image  = @"Bon_Jovi.jpg";
    [groups addObject:bonJovi];
    
    MusicalGroup *queen = [[MusicalGroup alloc]init];
    queen.name = @"Queen";
    queen.image  = @"queen.jpg";
    [groups addObject:queen];
    
    MusicalGroup *kino = [[MusicalGroup alloc]init];
    kino.name = @"Кино";
    kino.image  = @"Kino.jpg";
    [groups addObject:kino];
    
    MusicalGroup *nautilus = [[MusicalGroup alloc]init];
    nautilus.name = @"Наутилус";
    nautilus.image  = @"Nautilus.jpg";
    [groups addObject:nautilus];
    
    MusicalGroup *okeanElzi = [[MusicalGroup alloc]init];
    okeanElzi.name = @"Океан Ельзы";
    okeanElzi.image  = @"OE.jpg";
    [groups addObject:okeanElzi];
    
    MusicalGroup *ddt = [[MusicalGroup alloc]init];
    ddt.name = @"ДДТ";
    ddt.image  = @"DDT.jpg";
    [groups addObject:ddt];
    
    MusicalGroup *pinkFloyd = [[MusicalGroup alloc]init];
    pinkFloyd.name = @"Pink Floyd";
    pinkFloyd.image  = @"Pink_Floyd.jpg";
    [groups addObject:pinkFloyd];
    
    MusicalGroup *scorpions = [[MusicalGroup alloc]init];
    scorpions.name = @"Scorpions";
    scorpions.image  = @"Scorpions.jpg";
    [groups addObject:scorpions];
    
    
    MusicalGroup *mashinaVremeni = [[MusicalGroup alloc]init];
    mashinaVremeni.name = @"Машина Времени";
    mashinaVremeni.image  = @"Mashina_Vremeni.jpg";
    [groups addObject:mashinaVremeni];
    
}

#warning Этот метод здесь не нужен, так как ты ничего не добавил в дефолтную реализацию
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [groups count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *kCellIdentifier = @"musiclaGroupCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    
    }
    
#warning Использовать нативную ячейки - это хак)) Так ты не поиграешься в autolayout, а котором было сказано в задании. Создай свою ячейку (наследник UITableViewCell), добавь на нее лейэблу и картинку, используя autolayout. Также само заполнение ячейки моделью MusicalGroup должно быть инкапсулировано в самой ячейке, то есть у нее будет метод setupWithMusicalGroup: или вроде того
    MusicalGroup *group = groups[indexPath.row];
    cell.textLabel.text = group.name;
    cell.imageView.image = [UIImage imageNamed:group.image];
    
    return cell;
}

@end
