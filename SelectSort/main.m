//
//  main.m
//  SelectSort
//
//  Created by beijiXinOg on 2019/6/18.
//  Copyright © 2019年 beijiXinOg. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10] = {10,9,8,7,6,5,4,3,2,1};
        int count = sizeof(a)/sizeof(int);
        //选择排序
        for (int i = 0; i < count; i++) {
            int minIndex = i;//从第一个位置开始
            for (int j =i+1 ; j <count; j++) {
                if (a[minIndex] > a[j]) {
                    minIndex = j; // 找到剩余数中最小的数的索引
                }
            }
            // 交换
            int temp = a[i];
            a[i] = a[minIndex];
            a[minIndex] = temp;
        }
        for (int i = 0; i < count; i++) {
            NSLog(@"%d ",a[i]);
        }
    }
    return 0;
}
