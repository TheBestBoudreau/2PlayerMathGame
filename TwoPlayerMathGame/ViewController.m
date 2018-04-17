//
//  ViewController.m
//  TwoPlayerMathGame
//
//  Created by Tyler Boudreau on 2018-04-16.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *PlayerLabel;
@property (weak, nonatomic) IBOutlet UILabel *Score1;
@property (weak, nonatomic) IBOutlet UILabel *Score2;
@property (weak, nonatomic) IBOutlet UILabel *Player1Life;
@property (weak, nonatomic) IBOutlet UILabel *Player2Life;
@property (weak, nonatomic) IBOutlet UILabel *InsertPlayer;
@property (weak, nonatomic) IBOutlet UILabel *userInput;

@property GameModel *gameModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.gameModel=[GameModel new];
    [self updateView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Digit0:(UIButton *)sender {
    NSString *digit0String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    
    if(![self.gameModel.combineStrings isEqualToString:@""]){
        self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit0String];
        NSLog(@"%@",self.gameModel.combineStrings);
        self.userInput.text=self.gameModel.combineStrings;
    }

}
- (IBAction)Digit1:(UIButton *)sender {
    NSString *digit1String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit1String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",self.gameModel.combineStrings);
    
}
- (IBAction)Digit2:(UIButton *)sender {
       NSString *digit2String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit2String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit2String);
    
}
- (IBAction)Digit3:(UIButton *)sender {
       NSString *digit3String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit3String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit3String);
}
- (IBAction)Digit4:(UIButton *)sender {
       NSString *digit4String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit4String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit4String);
}
- (IBAction)Digit5:(UIButton *)sender {
       NSString *digit5String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit5String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit5String);
}
- (IBAction)Digit6:(UIButton *)sender {
       NSString *digit6String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit6String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit6String);
}
- (IBAction)Digit7:(UIButton *)sender {
       NSString *digit7String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit7String];
    self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit7String);
}
- (IBAction)Digit8:(UIButton *)sender {
       NSString *digit8String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
        self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit8String];
        self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit8String);
}
- (IBAction)Digit9:(UIButton *)sender {
       NSString *digit9String = [NSString stringWithFormat:@"%ld",(long)sender.tag];
        self.gameModel.combineStrings=[self.gameModel.combineStrings stringByAppendingString:digit9String];
        self.userInput.text=self.gameModel.combineStrings;
    NSLog(@"%@",digit9String);
}
- (IBAction)HitEnter:(UIButton *)sender {

    
    [self.gameModel loseLives];
    
    if(self.gameModel.currentPlayer.lives==0){
        [self.gameModel resetGame];
    }
    else{
        [self. gameModel updateCurrentPlayer];
    }
    [self updateView];

 

}

-(void)updateView {
    
    self.Player1Life.text=[NSString stringWithFormat:@"Player 1 Life:%ld",self.gameModel.player1.lives];
    self.Score1.text=[NSString stringWithFormat:@"Score 1: %ld",self.gameModel.player1.score];
    
    self.Player2Life.text=[NSString stringWithFormat:@"Player 2 Life:%ld",self.gameModel.player2.lives];
    self.Score2.text=[NSString stringWithFormat:@"Score 2: %ld",self.gameModel.player2.score];
    
    
    [self.gameModel updateView];
    self.PlayerLabel.text=self.gameModel.questionString;
    self.userInput.text=@"";
    self.InsertPlayer.text=self.gameModel.currentPlayer.playerName;
    
}

@end
