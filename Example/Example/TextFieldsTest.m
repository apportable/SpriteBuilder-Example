//
//  TextFieldsTest.m
//  Example
//
//  Created by Viktor on 10/22/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "TextFieldsTest.h"
#import "CCTextField.h"

@implementation TextFieldsTest

- (void) didLoadFromCCB
{
    CCNode* contentNode = [CCNode node];
    contentNode.contentSize = CGSizeMake(1, 2);
    contentNode.contentSizeType = CCContentSizeTypeNormalized;
    
    {
        CCTextField* field = [[CCTextField alloc] initWithSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"ccbResources/ccbTextField.png"]];
        field.position = ccp(100, 200);
        field.preferredSize = CGSizeMake(200, 30);
        [contentNode addChild:field];
    }
    {
        CCTextField* field = [[CCTextField alloc] initWithSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"ccbResources/ccbTextField.png"]];
        field.position = ccp(100, 100);
        field.preferredSize = CGSizeMake(200, 30);
        [contentNode addChild:field];
    }
    
    {
        CCTextField* field = [[CCTextField alloc] initWithSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"ccbResources/ccbTextField.png"]];
        field.position = ccp(100, 50);
        field.preferredSize = CGSizeMake(200, 30);
        [contentNode addChild:field];
    }
    
    {
        CCTextField* field = [[CCTextField alloc] initWithSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"ccbResources/ccbTextField.png"]];
        field.position = ccp(100, 0);
        field.preferredSize = CGSizeMake(200, 30);
        [contentNode addChild:field];
    }
    
    CCScrollView* scrollView = [[CCScrollView alloc] initWithContentNode:contentNode];
    [self addChild:scrollView];
}

@end
