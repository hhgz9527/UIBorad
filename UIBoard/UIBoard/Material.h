//
//  Material.h
//  UIBoard
//
//  Created by GaoYu on 15/3/24.
//  Copyright (c) 2015年 moshou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Material : NSObject

@property (strong) NSString *title;
@property (strong) NSImage *thumbImage;

- (id)initWithTitle:(NSString *)title thumbImage:(NSImage *)thumbImage;

@end
