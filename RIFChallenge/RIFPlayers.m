//
//  RIFPlayer.m
//  RIFChallenge
//
//  Created by Kiara Robles on 3/7/16.
//  Copyright © 2016 kiaraRobles. All rights reserved.
//

#import "RIFPlayers.h"

@implementation RIFPlayer

+ (instancetype)sharedPlayers
{
    static RIFPlayer *_sharedPlayers = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedPlayers = [[RIFPlayer alloc] init];
    });
    
    return _sharedPlayers;
}

- (enum Turn)nextTurn
{
    if (self.turn == riffsyTurn) {
        self.turn = blackTurn;
        return blackTurn;
    } else {
        self.turn = riffsyTurn;
        return riffsyTurn;
    }
}


@end
