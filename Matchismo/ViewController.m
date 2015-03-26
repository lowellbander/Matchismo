//
//  ViewController.m
//  Matchismo
//
//  Created by Lowell Bander on 3/26/15.
//  Copyright (c) 2015 Lowell Bander. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    // keep the UI in sync:
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

// Target action
// IBAction is typedef'd to void. just a tool for Xcode
- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        
        // not the right way to be doing this:
        PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
        Card *card = [deck drawRandomCard];
        
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    ++self.flipCount;
    
}



@end
