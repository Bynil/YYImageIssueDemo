//
//  ViewController.m
//  YYImageIssueDemo
//
//  Created by GeXiao on 21/03/2017.
//  Copyright © 2017 GeXiao. All rights reserved.
//

#import "ViewController.h"
#import "AnimatetPicsTableViewController.h"

#define ScreenWidth \
([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] ? [UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale : CGRectGetWidth([[UIScreen mainScreen] bounds]))

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *differentPicsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    differentPicsButton.frame = CGRectMake(0, 100, ScreenWidth, 100);
    [differentPicsButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [differentPicsButton setTitle:@"Different Source Pictures" forState:UIControlStateNormal];
    [differentPicsButton addTarget:self action:@selector(showDifferentSourcePicturesView) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *samePicsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    samePicsButton.frame = CGRectMake(0, 200, ScreenWidth, 100);
    [samePicsButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [samePicsButton setTitle:@"Same Source Pictures" forState:UIControlStateNormal];
    [samePicsButton addTarget:self action:@selector(showSameSourcePicturesView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:differentPicsButton];
    [self.view addSubview:samePicsButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showDifferentSourcePicturesView {
    AnimatetPicsTableViewController *viewController = [AnimatetPicsTableViewController new];
    viewController.animationURLArray = @[@"https://o4saor8w2.qnssl.com/animated_1.webp", @"https://o4saor8w2.qnssl.com/animated_2.webp", @"https://o4saor8w2.qnssl.com/animated_3.webp", @"https://o4saor8w2.qnssl.com/animated_4.webp",@"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_6.webp", @"https://o4saor8w2.qnssl.com/animated_7.webp", @"https://o4saor8w2.qnssl.com/animated_8.webp",@"https://o4saor8w2.qnssl.com/animated_9.webp", @"https://o4saor8w2.qnssl.com/animated_10.webp", @"https://o4saor8w2.qnssl.com/animated_11.webp", @"https://o4saor8w2.qnssl.com/animated_12.webp"];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)showSameSourcePicturesView {
    AnimatetPicsTableViewController *viewController = [AnimatetPicsTableViewController new];
    viewController.animationURLArray = @[@"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp",@"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp",@"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp", @"https://o4saor8w2.qnssl.com/animated_5.webp"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
