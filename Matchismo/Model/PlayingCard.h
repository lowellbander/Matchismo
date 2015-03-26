//
//  PlayingCard.h
//  Matchismo
//
//  Created by Lowell Bander on 3/26/15.
//  Copyright (c) 2015 Lowell Bander. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
