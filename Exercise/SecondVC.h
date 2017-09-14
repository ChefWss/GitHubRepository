//
//  SecondVC.h
//  Exercise
//
//  Created by 王少帅 on 2017/8/21.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^PopBlock)(int a, int b);

@interface SecondVC : UIViewController

- (void)pop;

@property(nonatomic, copy) PopBlock popBlock;

- (void)returnBlock:(PopBlock)block;

@end
