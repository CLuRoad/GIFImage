//
//  ViewController.m
//  GIFLoadingDemo
//
//  Created by RoadClu on 2017/5/25.
//  Copyright © 2017年 worldunion. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showLoading:(id)sender {
    
    [SVProgressHUD showInfoWithStatus:@"加载中。。。"];
    
    [self performSelector:@selector(hideHUD:) withObject:nil afterDelay:5];
    
}

- (void)hideHUD:(id)sender {
    [SVProgressHUD dismiss];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
