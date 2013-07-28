//
//  SETerminalView.h
//  Platypus
//
//  Created by Sveinbjorn Thordarson on 7/28/13.
//  Copyright (c) 2013 Sveinbjorn Thordarson. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class ITTerminalView;

@interface SETerminalView : NSView
{
    ITTerminalView *term;
}
- (void)newSessionWithCommand: (NSString *)cmd;
- (ITTerminalView *)term;

@end
