//
//  RIFCheckers.m
//  RIFChallenge
//
//  Created by Kiara Robles on 3/7/16.
//  Copyright © 2016 kiaraRobles. All rights reserved.
//

#import "RIFCheckers.h"

@implementation RIFCheckers

+ (instancetype)sharedChecker
{
    static RIFCheckers *_sharedChecker = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedChecker = [[RIFCheckers alloc] init];
    });
    
    return _sharedChecker;
}

+ (RIFCheckers *)newCheckerWithColor:(UIColor *)color
{
    RIFCheckers *newChecker = [[RIFCheckers alloc] init];
    newChecker.colorUI = color;
    return newChecker;
}

#pragma mark - setter override
- (void)setColor:(enum Color)checkerColor
{
    _color = checkerColor;
    
    switch (_color) {
        case blackChecker:
            self.backgroundColor = [UIColor darkGrayColor];
            self.layer.cornerRadius = self.frame.size.width / 2;
            self.clipsToBounds = YES;
            self.alpha = .5;
            self.layer.borderColor = [UIColor blackColor].CGColor;
            break;
            
        case redChecker:
            self.backgroundColor = [UIColor redColor];
            self.layer.cornerRadius = self.frame.size.width / 2;
            self.clipsToBounds = YES;
            self.alpha = .5;
            self.layer.borderColor = [UIColor blackColor].CGColor;
            break;
            
        case empty:
            self.backgroundColor = [UIColor clearColor];
            break;
    }
}

- (BOOL)isBlack
{
    if (self.color == blackChecker) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isRed
{
    if (self.color == redChecker) {
        return YES;
    } else {
        return NO;
    }
}

@end
