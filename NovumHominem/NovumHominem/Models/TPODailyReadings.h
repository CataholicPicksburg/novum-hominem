//
//  TPODailyReadings.h
//  NovumHominem
//
//  Created by Zacharias George on 6/17/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ONOXMLDocument;

@interface TPODailyReadings : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *readings;

+ (instancetype)dailyReadings;

+ (void)parseReadingsFromXMLDocument:(ONOXMLDocument *)XMLDocument;

@end
