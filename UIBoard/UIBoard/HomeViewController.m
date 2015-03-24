//
//  HomeViewController.m
//  UIBoard
//
//  Created by GaoYu on 15/3/24.
//  Copyright (c) 2015年 moshou. All rights reserved.
//

#import "HomeViewController.h"
#import "Material.h"

@interface HomeViewController ()<NSTableViewDataSource, NSTableViewDelegate>

@property (strong) NSMutableArray *menuArray;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    Material *material = [[Material alloc] initWithTitle:@"Button UI" thumbImage:nil];
    Material *material2 = [[Material alloc] initWithTitle:@"Background UI" thumbImage:nil];
    
    _menuArray = [NSMutableArray arrayWithObjects:material, material2, nil];
    NSLog(@"%@",_menuArray);
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_menuArray count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    
    // Since this is a single-column table view, this would not be necessary.
    // But it's a good practice to do it in order by remember it when a table is multicolumn.
    if( [tableColumn.identifier isEqualToString:@"MenuCell"] )
    {
        Material *material = [_menuArray objectAtIndex:row];
        cellView.textField.stringValue = material.title;
        return cellView;
    }
    return cellView;
}


@end
