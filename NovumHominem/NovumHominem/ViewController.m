//
//  ViewController.m
//  NovumHominem
//
//  Created by Zacharias George on 6/15/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import "ViewController.h"
#import <DigitsKit/DigitsKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // ZG - Playing with Digits to sign in with a phone number
    DGTAuthenticateButton *authenticateButton = [DGTAuthenticateButton buttonWithAuthenticationCompletion:^(DGTSession *session, NSError *error) {
        // play with Digits session
    }];
    authenticateButton.center = self.view.center;
    [self.view addSubview:authenticateButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
