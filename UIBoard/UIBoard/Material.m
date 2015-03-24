//
//  Material.m
//  UIBoard
//
//  Created by GaoYu on 15/3/24.
//  Copyright (c) 2015年 moshou. All rights reserved.
//

#import "Material.h"

@implementation Material

- (id)initWithTitle:(NSString *)title thumbImage:(NSImage *)thumbImage {
    self = [super init];
    if (self) {
        _title = title;
        _thumbImage = thumbImage;
    }
    return self;
}

@end
