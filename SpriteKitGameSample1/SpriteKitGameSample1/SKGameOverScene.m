//
//  SKGameOverScene.m
//  SpriteKitGameSample1
//
//  Created by Hsee.com on 10/11/13.
//  Copyright (c) 2013 Jerry.li. All rights reserved.
//

#import "SKGameOverScene.h"

#import "SKGMyScene.h"

@implementation SKGameOverScene

-(id)initWithSize:(CGSize)size won:(BOOL)won {
    
    if (self = [super initWithSize:size]) {
        
        self.backgroundColor = [SKColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
        
        NSString * message = @"";
        if (won) {
            message = @"You Won ...";
        } else {
            message = @"You Lose :[";
        }
        
        SKLabelNode * label = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        label.text = message;
        label.fontColor = [SKColor blackColor];
        label.fontSize = 42;
        label.position = CGPointMake(self.size.width / 2.0f, self.size.height / 2.0f);
        [self addChild:label];
        
        [self runAction:
            [SKAction sequence:@[
                                 [SKAction waitForDuration:3.0],
                                 [SKAction runBlock:^{
                SKTransition * reveal = [SKTransition flipHorizontalWithDuration:0.5f];
                SKScene * myScene = [[SKGMyScene alloc] initWithSize:self.size];
                [self.view presentScene:myScene transition:reveal];
            }]
          ]]
         ];
    }
    
    return self;
}

@end
