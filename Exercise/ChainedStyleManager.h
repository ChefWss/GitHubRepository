//
//  ChainedStyleManager.h
//  Exercise
//
//  Created by 王少帅 on 2017/9/6.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ChainedStyleManager;

typedef ChainedStyleManager *(*CLikeFunction) (NSString *);

/*****************************************************************/

typedef ChainedStyleManager *(^JCChainVoidBlock)();
typedef ChainedStyleManager *(^JCChainStringBlock)(NSString *);

@interface ChainedStyleManager : NSObject

- (CLikeFunction)dotMessageWithCFunction;

/*****************************************************************/

- (JCChainVoidBlock)begin;

- (JCChainVoidBlock)firstBlock;

- (JCChainStringBlock)secondBlock;

@end
