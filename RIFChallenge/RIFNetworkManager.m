//
//  NetworkManager.m
//  RIFChallenge
//
//  Created by Kiara Robles on 3/6/16.
//  Copyright © 2016 kiaraRobles. All rights reserved.
//

#import "NetworkManager.h"
#import <UNIRest/UNIRest.h>

@implementation NetworkManager

+(void)getGIFWithCompletion:(void (^)(NSArray *responseObject))block
{
    NSString *stringURL = @"http://api.riffsy.com/v1/search?tag=winning&limit=1";
    NSURL *url = [NSURL URLWithString:stringURL];
    NSURLRequest *gifRequest = [NSURLRequest requestWithURL:url];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *gifDataTask = [session dataTaskWithRequest:gifRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSArray *responseArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        block(responseArray);
    }];
    
    [gifDataTask resume];
}

@end
