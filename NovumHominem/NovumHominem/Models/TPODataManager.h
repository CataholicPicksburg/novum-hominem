//
//  TPODataManager.h
//  NovumHominem
//
//  Created by Zacharias George on 6/17/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TPODataManager : NSObject

+ (instancetype)sharedManager;

- (void)downloadReadingsOfTheDay;

@end
