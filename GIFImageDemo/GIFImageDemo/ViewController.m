//
//  ViewController.m
//  GIFImageDemo
//
//  Created by RoadClu on 2017/5/25.
//  Copyright © 2017年 worldunion. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+GIFImage.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView1;

@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UIImageView *imgView3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imgView1.image = [UIImage imageWithGIFNamed:@"football"];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"girl" ofType:@"gif"];
    NSData *imgData = [NSData dataWithContentsOfFile:path];
    _imgView2.image = [UIImage imageWithGIFData:imgData];
    
    
    [UIImage imageWithGIFUrl:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1495708809771&di=da92fc5cf3bdd684711ab5124ee43183&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%253D580%2Fsign%3D91bd6cd2d42a60595210e1121835342d%2F212eb9389b504fc215d0301ee6dde71190ef6d1a.jpg" and:^(UIImage *GIFImage) {
        _imgView3.image = GIFImage;
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
