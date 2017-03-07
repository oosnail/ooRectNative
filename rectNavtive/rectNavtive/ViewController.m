//
//  ViewController.m
//  rectNavtive
//
//  Created by 张天琛 on 2017/3/2.
//  Copyright © 2017年 张天琛. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"
#import "RCTBundleURLProvider.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *butn = [[UIButton alloc]init];
    [butn addTarget:self action:@selector(highScoreButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    butn.frame = CGRectMake(100, 100, 100, 100);
    butn.backgroundColor = [UIColor redColor];
    [self.view addSubview:butn];
}

- (void)highScoreButtonPressed{
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"aa"
                         initialProperties :
     @{
       @"scores" : @[
               @{
                   @"name" : @"Alex",
                   @"value": @"42"
                   },
               @{
                   @"name" : @"Joel",
                   @"value": @"10"
                   }
               ]
       }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
