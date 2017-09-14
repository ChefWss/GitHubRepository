//
//  SecondVC.m
//  Exercise
//
//  Created by 王少帅 on 2017/8/21.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import "SecondVC.h"

typedef NS_ENUM (NSInteger, UserSex) {
    UserSex_Man,
    UserSex_Woman
};

@interface SecondVC ()

@property(nonatomic, strong) UIButton *btn2;
@property(nonatomic, copy) NSString *name;
@property(nonatomic, assign) UserSex sex;

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"2";
    
    _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn2.frame = CGRectMake(50, 64, 150, 70);
    _btn2.backgroundColor = [UIColor blueColor];
    [_btn2 setTitle:@"pop" forState:UIControlStateNormal];
    [_btn2 addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn2];
    
    NSLog(@"2self：%p", self);
    
//    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
//    NSLog(@"Time: %f", CFAbsoluteTimeGetCurrent() - start);
}

- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
    if (_popBlock) {
        self.popBlock(1 ,arc4random_uniform(500));
    }
}



- (void)returnBlock:(PopBlock)block {
    self.popBlock = block;
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
