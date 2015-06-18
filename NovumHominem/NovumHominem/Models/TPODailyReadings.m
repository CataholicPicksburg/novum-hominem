//
//  TPODailyReadings.m
//  NovumHominem
//
//  Created by Zacharias George on 6/17/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import "TPODailyReadings.h"
#import "Ono.h"

@implementation TPODailyReadings

+ (instancetype)dailyReadings {
    static TPODailyReadings *sharedReadings = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedReadings = [[self alloc] init];
    });
    return sharedReadings;
}

+ (void)parseReadingsFromXMLDocument:(ONOXMLDocument *)XMLDocument {
    
    ONOXMLElement *dailyReadings = [[XMLDocument.rootElement firstChildWithTag:@"channel"] firstChildWithTag:@"item"];
    
    TPODailyReadings *readingsForTheDay = [TPODailyReadings dailyReadings];
    ONOXMLElement *XMLTitle = [dailyReadings firstChildWithTag:@"title"];
    ONOXMLElement *XMLReadings = [dailyReadings firstChildWithTag:@"description"];
    
    readingsForTheDay.title = [XMLTitle stringValue];
    readingsForTheDay.readings = [XMLReadings stringValue];
    
}

@end
