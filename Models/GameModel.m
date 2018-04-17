//
//  GameModel.m
//  TwoPlayerMathGame
//
//  Created by Tyler Boudreau on 2018-04-16.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {

        _player1=[Player new];
        _player1.playerName=@"Ted";
        _currentPlayer=_player1;
        _player2=[Player new];
        _player2.playerName=@"Krombopolus";
        
        
    }
    return self;
}


-(BOOL)checkAnswer
{
    NSString *answerStr = [NSString stringWithFormat:@"%ld",self.answer];
    if (![self.combineStrings isEqualToString:answerStr]){
     return NO;
    }
    return YES;
}

-(void)loseLives
{
    if([self checkAnswer] == NO){
    self.currentPlayer.lives --;
    }
    else{
        self.currentPlayer.score ++;
    }
}

-(void)updateView
{
    _leftNumber =arc4random_uniform(20)+1;
    _rightNumber=arc4random_uniform(20)+1;
    _answer =_leftNumber + _rightNumber;
    _answerString =[NSString stringWithFormat:@"%li",_answer];
    _questionString=[NSString stringWithFormat:@"%li + %li?",(long)_leftNumber,(long)_rightNumber];
    _combineStrings=@"";
}

-(void)updateCurrentPlayer{
    if (_currentPlayer == _player1) {
        _currentPlayer = _player2;
    }
    else{
        _currentPlayer=_player1;
    }
}

-(void)resetGame{
    _player1.lives=3;
    _player1.score=0;
    
    _player2.lives=3;
    _player2.score=0;
    
}
@end
    
