//
//  MGMusicalGroupCell.h
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import <UIKit/UIKit.h>

#warning так и не увидел использования autolayout в ячейке

@interface MGMusicalGroupCell : UITableViewCell

#warning эти свойства нет необходимости показывать в *.h файле. Если вы реализуете метод setupWith<Имя вашей модели>:, то эти свойства переедут в *.m файл. Не нужно показывать в *.h файле ничего лишнего, только то, что необходимо для работы других объектов с данным классом
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageImgView;

#warning Заполняйте ячейки моделью, а не отдельно строкой и картинкой
- (void)setupCellWithName:(NSString *)name image:(UIImage *)image;

@end
