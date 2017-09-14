//
//  Global.m
//  Exercise
//
//  Created by 王少帅 on 2017/8/23.
//  Copyright © 2017年 王少帅. All rights reserved.
//

#import "Global.h"

@implementation Global

+ (id)contentWithJsonString:(NSString *)jsonString {
    if (jsonString == nil || [jsonString isKindOfClass:[NSNull class]]) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    id content = [NSJSONSerialization JSONObjectWithData:jsonData
                                                 options:NSJSONReadingMutableContainers
                                                   error:&err];
    if(err) {
        return nil;
    }
    return content;
}

+ (NSString*)NSStringJson:(id )content

{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:content options:NSJSONWritingPrettyPrinted error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
}

@end
