//
//  PhysicsLevel.m
//  Example
//
//  Created by Viktor on 10/7/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "PhysicsLevel.h"
#import "CCBuilderReader.h"
#import "cocos2d-ui.h"

@implementation PhysicsLevel

- (void) launchBall:(id)sender
{
    CCButton* btn = sender;
    
    CCSprite* ball = [CCSprite spriteWithImageNamed:@"PhysicsDemo/Sprites/ball.png"];
    ball.physicsBody = [CCPhysicsBody bodyWithCircleOfRadius:ball.contentSizeInPoints.width/2 andCenter:ball.anchorPointInPoints];
    ball.physicsBody.density = 0.5;
    [_physicsNode addChild:ball];
    
    ball.position = btn.position;

    CGPoint force;
    float rotationRadians = CC_DEGREES_TO_RADIANS(_launcher.rotation);
    force.x = sinf(rotationRadians) * 20000000;
    force.y = cosf(rotationRadians) * 20000000;
    
    [ball.physicsBody applyForce:force];
}

@end
