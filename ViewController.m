//
//  ViewController.m
//  MYWRatingView
//
//  Created by apple on 2017/7/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "RatingView.h"


#define KScreenW [UIScreen mainScreen].bounds.size.width
#define KScreenH [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    for (int i = 0; i < 9; i++) {
        RatingView *ratingV = [[RatingView alloc]initWithFrame:CGRectMake(100, 40 + 40*i, 100, 30)];
        ratingV.rating = i+1;
        [self.view addSubview:ratingV];
    }
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
