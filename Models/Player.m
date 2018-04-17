//
//  Player.m
//  TwoPlayerMathGame
//
//  Created by Tyler Boudreau on 2018-04-16.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _lives=3;
        _score=0;
    }
    return self;
}

@end
