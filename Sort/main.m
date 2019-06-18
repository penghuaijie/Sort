//
//  main.m
//  Sort
//
//  Created by beijiXinOg on 2019/4/8.
//  Copyright © 2019年 beijiXinOg. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a[10] = {10,9,8,7,6,5,4,3,2,1};
        int count = sizeof(a)/sizeof(int);
        
        for (int i = 0; i < count; i++) {
            for (int j = 0; j < count-1-i; j++) {
                if (a[j]>a[j+1]) {
                    int temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                }
            }
        }
        for (int i = 0; i < count; i++) {
            NSLog(@"%d ",a[i]);
        }
        printf("\n");
    }
    return 0;
}
