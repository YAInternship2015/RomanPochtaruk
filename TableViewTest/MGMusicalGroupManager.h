//
//  MGMusicalGroupManager.h
//  MusicalGroups
//
//  Created by Admin on 13.08.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MGMusicalGroupManager : NSObject

#warning Вам здесь нет необходимости показывать массив наружу, это детали внутренней реализации. Вам необходимо показывать минимальный интерфейс, который необходим другим классам для работы с данным классом. Вью контроллеру всего лишь необходимо знать, сколько всего ячеек у него в таблице должно быть и какая модель должны быть в ячейке с конкретным индексом

- (NSArray *)musicalGroups;

@end
