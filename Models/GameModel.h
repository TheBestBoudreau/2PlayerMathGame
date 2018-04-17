//
//  GameModel.h
//  TwoPlayerMathGame
//
//  Created by Tyler Boudreau on 2018-04-16.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@interface GameModel : NSObject
@property (nonatomic)NSInteger leftNumber;
@property (nonatomic)NSInteger rightNumber;
@property (nonatomic)NSInteger answer;
@property NSString *questionString;
@property NSString *answerString;
@property (nonatomic)NSInteger rightAnswer;
@property (nonatomic)NSInteger wrongAnswer;
@property NSString *combineStrings;
@property Player *player1;
@property Player *player2;
@property Player *currentPlayer;
-(void)updateView;

-(BOOL)checkAnswer;

-(void)loseLives;

-(void)updateCurrentPlayer;

-(void)resetGame;



@end
