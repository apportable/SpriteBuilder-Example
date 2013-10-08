//
//  PhysicsScene.m
//  Example
//
//  Created by Viktor on 10/7/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "PhysicsScene.h"
#import "cocos2d-ui.h"
#import "CCBuilderReader.h"

@implementation PhysicsScene

- (void) didLoadFromCCB
{
    [self setupLevel];
}

- (void) setupLevel
{
    CCNode* level = [CCBReader nodeGraphFromFile:@"PhysicsDemo/Level"];
    
    _scrollView = [[CCScrollView alloc] initWithContentNode:level];
    _scrollView.verticalScrollEnabled = NO;
    
    [self addChild:_scrollView];
}

- (void) pressedRestart:(id)sender
{
    [self removeChild:_scrollView];
    [self setupLevel];
}

@end
