//
//  SETerminalView.m
//  Platypus
//
//  Created by Sveinbjorn Thordarson on 7/28/13.
//  Copyright (c) 2013 Sveinbjorn Thordarson. All rights reserved.
//

#import "SETerminalView.h"
#import <iTerm/iTermController.h>
#import <iTerm/ITAddressBookMgr.h>
#import <iTerm/ITTerminalView.h>

@implementation SETerminalView

- (id)initWithFrame:(NSRect)frameRect {
    if ((self = [super initWithFrame:frameRect]) != nil) {
        // Add initialization code here
    }
    return self;
}

- (void)awakeFromNib {
    
}

- (void)newSessionWithCommand: (NSString *)cmd {
    // make sure this is initialized (yes goofy, I know)
    [iTermController sharedInstance];
    
    NSDictionary *dict = [[ITAddressBookMgr sharedInstance] defaultBookmarkData];
    term = [ITTerminalView view:dict];
    
    NSLog(@"DeSCRIPTION: %@", [dict description]);
    
    [term setFrame:[self bounds]];
    [self addSubview:term];
    [term addNewSession:dict withCommand:cmd withURL:nil];
}

- (ITTerminalView *)term {
    return term;
}

@end
