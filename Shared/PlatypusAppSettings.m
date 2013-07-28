//
//  PlatypusAppSettings.m
//  Platypus
//
//  Created by Sveinbjorn Thordarson on 7/28/13.
//  Copyright (c) 2013 Sveinbjorn Thordarson. All rights reserved.
//

#import "PlatypusAppSettings.h"

@implementation PlatypusAppSettings

-(id)init {
    if ((self = [super init])) {
        dict = [[NSMutableDictionary alloc] initWithCapacity:256];
        resolved = FALSE;
        [self setDefaults];
    }
    return self;
}

-(id)initWithDictionary:(NSDictionary *)d {
    if ((self = [self init])) {
        [self updateWithDictionary:d];
    }
    return self;
}

-(id)initWithPlistAtPath:(NSString *)path {
    NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:path];
    if (!d) {
        NSLog(@"Failed to init App Settings object with nil plist dict from path %@", path);
        return nil;
    }
    
    if ((self = [self initWithDictionary:d])) {
        return self;
    }
    return nil;
}

#pragma mark - Setters

-(void)setDefaults {
    NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:
                       @"Creator", @"",
                       @"InterpreterArgs", @"",
                       @"ScriptArgs", @"",
                       @"DropSuffixes", @"",
                       @"Droppable", @"",
                       @"OutputType", @"",
                       @"StatusItemDisplayType", @"",
                       @"StatusItemTitle", @"",
                       @"StatusItemIcon", @"",
                       @"RemainRunningAfterCompletion", @"",
                       @"RequiresAdminPrivileges", @"",
                       @"PromptForFileOnLaunch", @"",
                       @"RunInBackground", @"",
                       @"AcceptsText", @"",
                       @"AcceptsFiles", @"",
                       @"ScriptInterpreter", @"",
                       @"Secure", @"",
                       @"TextBackground", @"",
                       @"TextEncoding", @"",
                       @"TextFont", @"",
                       @"TextForeground", @"",
                       @"TextSize", @"",
                       @"TextSettings", @"",
                       nil];
    [self setWithDictionary:d];
}

-(void)setWithDictionary: (NSDictionary *)d {
    [dict removeAllObjects];
    [dict addEntriesFromDictionary:d];
}

-(void)updateWithDictionary: (NSDictionary *)d {
    [dict addEntriesFromDictionary:d];
}

#pragma mark - Write out plist representation

-(void)writeAsPlistToPath:(NSString *)path asXML:(BOOL)asXML {
    
}

#pragma mark - Operations

-(BOOL)verify {
    
    return TRUE;
}

-(PlatypusAppSettings *)resolve {
    
    resolved = TRUE;
    return self;
}

#pragma mark - Dict interface

-(void)setObject:(id)object forKey:(NSString *)key {
    [dict setObject:object forKey:key];
}

-(id)objectForKey:(NSString *)key {
    return [dict objectForKey:key];
}

@end
