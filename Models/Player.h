//
//  Player.h
//  TwoPlayerMathGame
//
//  Created by Tyler Boudreau on 2018-04-16.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Player : NSObject
@property (nonatomic)NSInteger lives;
@property (nonatomic)NSInteger score;
@property NSString *playerName;

@end
