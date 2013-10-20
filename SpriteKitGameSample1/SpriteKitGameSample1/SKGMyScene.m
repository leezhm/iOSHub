//
//  SKGMyScene.m
//  SpriteKitGameSample1
//
//  Created by Zhengmin.li on 10/10/13.
//  Copyright (c) 2013 Jerry.li. All rights reserved.
//

#import "SKGMyScene.h"

@interface SKGMyScene ()

/// for player
@property (nonatomic) SKSpriteNode * player;

@end

@implementation SKGMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
//        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
//        
//        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
//        
//        myLabel.text = @"Hello, World!";
//        myLabel.fontSize = 30;
//        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
//                                       CGRectGetMidY(self.frame));
//        
//        [self addChild:myLabel];
        
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        
        self.backgroundColor = [SKColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
        
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"player"];
        self.player.position = CGPointMake(CGRectGetMidX(self.frame),
                                           CGRectGetMidY(self.frame));
        
        [self addChild:self.player];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}


- (void)addMonster {
    
    // create sprite
    SKSpriteNode * monster = [SKSpriteNode spriteNodeWithImageNamed:@"monster"];
    
    // determine where to spawn the monster alone the Y axis
    int minY = monster.size.height / 2.0f;
    int maxY = self.frame.size.height - minY;
    int rangeY = maxY -minY;
    int actualY = (arc4random() % rangeY) + minY;
    
    // create the monster
    monster.position = CGPointMake(self.frame.size.width + monster.size.width / 2.0f, actualY);
    [self addChild:monster];
    
    // determine speed of the monster
    int minDuration = 2.0f;
    int maxDuration = 4.0f;
    int rangeDuration = maxDuration - minDuration;
    int actualDuration = (arc4random() % rangeDuration) + minDuration;
    
    // create the actions
    SKAction * actionMove = [SKAction moveTo:CGPointMake(-monster.size.width / 2.0f, actualY) duration:actualDuration];
    SKAction * actionMoveDone = [SKAction removeFromParent];
    [monster runAction:[SKAction sequence:@[actionMove, actionMoveDone]]];
}

@end
