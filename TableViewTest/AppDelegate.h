//
//  AppDelegate.h
//  TableViewTest
//
//  Created by Admin on 31.07.15.
//  Copyright (c) 2015 Roman Pochtaruk. All rights reserved.
//

#import <UIKit/UIKit.h>

#warning В проекте все классы должны иметь трехбуквенный префикс, взятый из имени проекта. В твоем случае это что-то вроде TVT (TableViewTest). Это делается для того, чтобы не возникало конфликтов с классами эппла и других разработчиков

#warning Также есть замечание к структуре проекта. Все вью контроллеры должны быть в папке ViewControllers, модели - в папке моделей и т.д. При этом кажда конкретная модель/контроллер должны также лежать в своей отдельной папке

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

