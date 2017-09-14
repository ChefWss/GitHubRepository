//
//  ViewController.m
//  Exercise
//
//  Created by 王少帅 on 2017/8/21.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"
#import "NetWorkHandle.h"
#import "Global.h"
#import "ChainedStyleManager.h"

@interface ViewController ()

@property(nonatomic, strong) UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"1";

    
    
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame = CGRectMake(50, 64, 150, 70);
    [_btn setTitle:@"push" forState:UIControlStateNormal];
    _btn.backgroundColor = [UIColor orangeColor];
    [_btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
    
    NSLog(@"1self：%p", self);
    
    
    ChainedStyleManager *chainManager = [ChainedStyleManager new];
    
    chainManager.dotMessageWithCFunction(@"6666666").dotMessageWithCFunction(@"0000000").dotMessageWithCFunction(@"7777777");
    
    chainManager.firstBlock().secondBlock(@"1234567890").begin();
    
}



- (void)push {
    SecondVC *vc = [[SecondVC alloc] init];
    __weak __typeof(self)weakSelf = self;
    [vc returnBlock:^(int a, int b) {
        weakSelf.navigationItem.title = [NSString stringWithFormat:@"%d", a + b];
        NSLog(@"weakSelf：%p", weakSelf);
    }];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
