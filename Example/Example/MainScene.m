//
//  MainScene.m
//  Example
//
//  Created by Viktor on 9/5/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"

@implementation MainScene

- (void) pressedButton:(id)sender
{
    [_label stopAllActions];
    _label.rotation = 0;
    
    [_label runAction:[CCRotateBy actionWithDuration:1 angle:360]];
}

@end
