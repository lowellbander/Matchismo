//
//  Card.h
//  Matchismo
//
//  Created by Lowell Bander on 3/26/15.
//  Copyright (c) 2015 Lowell Bander. All rights reserved.
//

@import Foundation;

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
