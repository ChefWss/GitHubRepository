//
//  Global.h
//  Exercise
//
//  Created by 王少帅 on 2017/8/23.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Global : NSObject

+ (id)contentWithJsonString:(NSString *)jsonString;
+ (NSString*)NSStringJson:(id )content;

@end
