//
//  AppDelegate.m
//  UIBoard
//
//  Created by GaoYu on 15/3/24.
//  Copyright (c) 2015年 moshou. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, strong)HomeViewController *home;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _home = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    [_window.contentView addSubview:_home.view];
    _home.view.frame = ((NSView*)_window.contentView).bounds;
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
