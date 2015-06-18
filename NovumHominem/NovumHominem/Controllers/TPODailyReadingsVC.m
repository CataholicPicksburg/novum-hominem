//
//  TPODailyReadingsVC.m
//  NovumHominem
//
//  Created by Zacharias George on 6/17/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import "TPODailyReadingsVC.h"
#import "TPODailyReadings.h"

@interface TPODailyReadingsVC ()
@property (weak, nonatomic) IBOutlet UIWebView *dailyReadingsWebView;

@end

@implementation TPODailyReadingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *title = [TPODailyReadings dailyReadings].title;
    
    NSMutableString *readings = [NSMutableString stringWithFormat:@"<html><body bgcolor=\"#FFFAE5\"><h2><center>%@</center></h2>", title];
    [readings appendString:[TPODailyReadings dailyReadings].readings];
    [readings appendString:@"</body></html>"];
    
    [self.dailyReadingsWebView loadHTMLString:readings baseURL:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
