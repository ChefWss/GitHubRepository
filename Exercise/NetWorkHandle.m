//
//  NetWorkHandle.m
//  UI_网络请求
//
//  Created by dllo on 16/4/28.
//  Copyright © 2016年 WangShaoShuai. All rights reserved.
//

#import "NetWorkHandle.h"

@implementation NetWorkHandle

+ (void)getDataByURLString:(NSString *)urlString WithDataBlock:(DataBlock)block
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (!error)
        {
            //回调数据:
            block(data);
        }
    }];
    [task resume];
}


+ (void)postDataByURLString:(NSString *)urlString WithKeyData:(NSString *)keyDataStr WithDataBlock:(DataBlock)Block
{
    //创建响应对象:(request对象)
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    //修改请求方式(request不改默认是GET,而且GET没有HTTPBody,所以GET不用写这几步)
    request.HTTPMethod = @"POST";
    //设置请求体(post的参数部分,外界看不到,会保证请求的安全性)
    request.HTTPBody = [keyDataStr dataUsingEncoding:NSUTF8StringEncoding];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (!error)
        {
            Block(data);
        }
    }];
    [task resume];

}

@end
