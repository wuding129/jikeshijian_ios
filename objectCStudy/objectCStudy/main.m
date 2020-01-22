//
//  main.m
//  objectCStudy
//
//  Created by hsb on 2020/1/22.
//  Copyright © 2020 wuding. All rights reserved.
//

/*
 多行注释
 */

#import <Foundation/Foundation.h>
int testFn(int a, int b){
    return a + b;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        int a = 1;
        int b = 2;
        int c = a + b;
    
        NSLog(@"变量加法：%d", ++c);
        
        d:{
            NSLog(@"跳转");
            a++;
        }
        if(a<5){
            goto d;
        }
        
        int i = 0;
        while (1) {
            i++;
            NSLog(@"123");
            if(i==6) break;
        }
        
        int res = testFn(a, b);
        NSLog(@"测试函数：%d", res);
    }
    return 0;
}
