//
//  RootViewController.m
//  NSURLProtocol+WebKitSupport
//
//  Created by yeatse on 2016/10/11.
//  Copyright © 2016年 Yeatse. All rights reserved.
//

#import "RootViewController.h"
#import "NSURLProtocol+WebKitSupport.h"

@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    for (NSString* scheme in @[@"http", @"https"]) {
        if ([sender tag] == 0) {
            [NSURLProtocol wk_registerScheme:scheme];
        } else {
            [NSURLProtocol wk_unregisterScheme:scheme];
        }
    }
}

@end
