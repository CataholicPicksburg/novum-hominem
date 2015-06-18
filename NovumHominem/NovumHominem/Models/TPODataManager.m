//
//  TPODataManager.m
//  NovumHominem
//
//  Created by Zacharias George on 6/17/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import "TPODataManager.h"
#import "TPOConstants.h"
#import "TPODailyReadings.h"

// Ono
#import "Ono.h"

// AFNetworking
#import <AFNetworking/AFNetworking.h>

@implementation TPODataManager

+ (instancetype)sharedManager {
    static TPODataManager *sharedTPODataManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedTPODataManager = [[self alloc] init];
    });
    return sharedTPODataManager;
}

- (void)downloadReadingsOfTheDay {
    
    NSString *fullURL = kURLUSCCBBaseURL;
    fullURL = [fullURL stringByAppendingPathComponent:kPathComponentUSCCBDailyReadingsRSS];
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSData *data = (NSData *)responseObject;
        NSError *error;
        
        ONOXMLDocument *document = [ONOXMLDocument XMLDocumentWithData:data error:&error];
        
        [TPODailyReadings parseReadingsFromXMLDocument:document];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", [error description]);
    }];
    
    [operation start];
    
}

@end
