//
//  ChainedStyleManager.m
//  Exercise
//
//  Created by 王少帅 on 2017/9/6.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import "ChainedStyleManager.h"

@implementation ChainedStyleManager

- (CLikeFunction)dotMessageWithCFunction{
    return testFunction;
}

ChainedStyleManager *testFunction(NSString *aString){
    NSLog(@"this is a C like function and log: %@",aString);
    return [ChainedStyleManager new];
};

/*****************************************************************/

- (JCChainVoidBlock)begin{
    return ^ChainedStyleManager *() {
        NSLog(@"begin");
        return self;
    };
}

- (JCChainVoidBlock)firstBlock{
    return ^ChainedStyleManager *() {
        NSLog(@"听局座唱rap😳,看诸葛琴魔");
        return self;
    };
}

- (JCChainStringBlock)secondBlock{
    return ^ChainedStyleManager *(NSString * aString) {
        NSLog(@"%@",aString);
        return self;
    };
}

@end
