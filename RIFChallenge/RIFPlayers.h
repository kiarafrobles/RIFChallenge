//
//  RIFPlayer.h
//  RIFChallenge
//
//  Created by Kiara Robles on 3/7/16.
//  Copyright © 2016 kiaraRobles. All rights reserved.
//

#import <Foundation/Foundation.h>

enum Turn {riffsyTurn, blackTurn};

@interface RIFPlayer : NSObject

@property (nonatomic, readwrite) enum Turn turn;

+ (instancetype)sharedPlayer;
- (enum Turn)nextTurn;

@end
