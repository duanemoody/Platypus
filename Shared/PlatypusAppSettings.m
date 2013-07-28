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
        [self setDefaults];
    }
    return self;
}

-(id)initWithDictionary:(NSDictionary *)d {
    if ((self = [self init])) {
        [self setWithDictionary:d];
    }
    return self;
}

-(id)initWithPlistAtPath:(NSString *)path {
    
    NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:path];
    if (!d) {
        NSLog(@"Failed to init App Settings object with empty dict from path %@", path);
        return nil;
    }
    
    if ((self = [self initWithDictionary:d])) {
        return self;
    }
    return nil;
}

-(void)setDefaults {
    NSDictionary *d;
}

-(void)setWithDictionary: (NSDictionary *)d {
    
}

-(void)writeAsPlistToPath:(NSString *)path asXML:(BOOL)asXML {
    
}

-(BOOL)verify {
    
}

#pragma mark - Dict interface

-(void)setObject:(id)object forKey:(NSString *)key {
    [dict setObject:object forKey:key];
}

-(id)objectForKey:(NSString *)key {
    return [dict objectForKey:key];
}

@end
