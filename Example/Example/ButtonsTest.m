//
//  ButtonsTest.m
//  Example
//
//  Created by Viktor on 10/21/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "ButtonsTest.h"

@implementation ButtonsTest

- (void) pressedDefaultButton:(id)sender
{
    _label.string = @"Pressed Default Button";
}

- (void) pressedToggleButton:(id)sender
{
    CCButton* button = sender;
    
    if (button.selected)
    {
        _label.string = @"Toggle Button is ON";
    }
    else
    {
        _label.string = @"Toggle Button is OFF";
    }
}

- (void) pressedTextOnlyButton:(id)sender
{
    _label.string = @"Pressed Text Only Button";
}

- (void) pressedSpriteButton:(id)sender
{
    _label.string = @"Pressed Sprite Button";
}

@end
