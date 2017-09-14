//
//  NetWorkHandle.h
//  UI_网络请求
//
//  Created by dllo on 16/4/28.
//  Copyright © 2016年 WangShaoShuai. All rights reserved.
//

#import <Foundation/Foundation.h>

//系统NSURLSession版本的GET请求步骤之一:重定义block
typedef void(^DataBlock)(id result);

@interface NetWorkHandle : NSObject

//系统NSURLSession版本的GET请求
+ (void)getDataByURLString:(NSString *)urlString
             WithDataBlock:(DataBlock)block;


//系统NSURLSession版本的POST请求
+ (void)postDataByURLString:(NSString *)urlString
                WithKeyData:(NSString *)keyDataStr
              WithDataBlock:(DataBlock)Block;


@end
